#!/bin/bash

## @file drupal_instalar.sh
##
## Instalación de drupal.

PROYECTO=$1
USUARIO=$2
PASSWORD=$3
MYSQL_USUARIO=$4
MYSQL_PASSWORD=$5
LOCALE=es

echo
echo Drupal se instalara en la ubicación actual `pwd`
echo
read -p 'Continuar. (s/n): ' CONTINUAR
if [ "$CONTINUAR" != 's' ] ; then
  exit
fi

[[ -z $PROYECTO ]]       && read -p "Nombre de proyecto. (Sin espacios):  " PROYECTO
[[ -z $USUARIO ]]        && read -p "Usuario drupal. (Sin espacios):      " USUARIO
[[ -z $PASSWORD ]]       && read -p "Password de usuario. (Sin espacios): " PASSWORD
[[ -z $MYSQL_USUARIO ]]  && read -p "Usuario mysql:                       " MYSQL_USUARIO
[[ -z $MYSQL_PASSWORD ]] && read -p "Password mysql:                      " MYSQL_PASSWORD


if [ -e "$PROYECTO" ] ; then
  echo
  echo El directorio $PROYECTO ya existe, cancelamos.
  echo
  exit
fi
drush -v dl drupal --drupal-project-rename=$PROYECTO
cd "$PROYECTO"
drush -v --yes site-install standard --account-name=$USUARIO --account-pass=$PASSWORD --db-url=mysql://$MYSQL_USUARIO:$MYSQL_PASSWORD@localhost/$PROYECTO --locale $LOCALE
wget http://ftp.drupal.org/files/translations/7.x/drupal/drupal-7.0.ca.po
wget http://ftp.drupal.org/files/translations/7.x/drupal/drupal-7.0.es.po
mv  *.po profiles/standard/translations/
drush --yes dl coder devel admin_menu advanced_help simplehtmldom devel_themer module_filter coffee
drush --yes en coder coder_review devel devel_generate admin_devel admin_menu admin_menu_toolbar advanced_help simplehtmldom devel_themer coffee
drush --yes en devel_generate rules_admin views_ui
drush --yes dis toolbar
drush --yes en admin_menu 

# Desactivamos Administrative overlay
drush dis overlay -y
drush pm-uninstall overlay -y

# Tema

# TEMA=zen
# drush dl $TEMA
# drush en $TEMA
# drush vset theme_default $TEMA

#   # Desinstalar.
#   drush -y dis sorteosmag ;
#   drush pm-uninstall -y sorteosmag ;
#   # Instalar sorteosmag
#   drush -y en sorteosmag ;
#   drush generate-content 10 --types=sorteosmag ;
#   drush generate-content 3 --types=magprizes ;
#   drush genu 10 ;
#   drush cc all
