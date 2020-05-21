#!/bin/bash

## @file backup.sh
## @brief Comprobar enlaces rotos
##
## Recogemos el numero de la semana y año.
## Si no tenemos directorio creamos una copia total del directorio WWW.
## Si tenemos directorio creamos una copia incremental.
##
## Para que funcione mysql debe haber un archivo con el usuario y contraseña
## en ~/.my.cnf
##
## @todo No borramos copias antiguas hasta tener servidor local con replica.

help() { doxygen2help "$0" ; }

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then help ; exit ; fi

## Lista de directorios.
DIRECTORIOS=
BACKUP_DIR=/var/backups/example
# Número de semanas que guardamos.
GUARDAMOS=3
# Indicador para mensajes de log.
LOG_MSG="backup_example"
# Acaba configuración.

# Buscamos configuración en archivo de usuario.
CONF_FILE=$HOME/.backup_example.conf

if [ ! -e "$CONF_FILE" ] ; then
  echo
  echo ERROR, es necesario el archivo de configuración $CONF_FILE
  echo
  exit
fi

source $CONF_FILE

if [ -z $BACKUP_DIR ] || [ "$DIRECTORIOS" == '' ] ; then
  echo
  echo ERROR, es necesario configurar las variables.
  echo
  exit
fi

# Semana.
SEMANA=$(date +%Y-%U)
DIA=$(date +%A)
# date=$(date +%Y-%m-%d_%H-%M-%S)

INCREMENTAL=0

if [ -d "$BACKUP_DIR/$SEMANA" ] ; then
  INCREMENTAL=1
fi

test -d $BACKUP_DIR/$SEMANA || mkdir -p $BACKUP_DIR/$SEMANA
test -d $BACKUP_DIR/$SEMANA/$DIA || mkdir -p $BACKUP_DIR/$SEMANA/$DIA

for db in $(mysql -B -s -e 'show databases' | grep -vE '(information_schema|performance_schema|mysql)' )
  do
  logger "$LOG_MSG Iniciada copia de seguridad $db"
  test -e $BACKUP_DIR/$SEMANA/$DIA/$db.sql.gz || mysqldump $db | gzip > $BACKUP_DIR/$SEMANA/$DIA/$db.sql.gz
done


# cd "$WWW_DIR"
# for dir in `find . -maxdepth 1 -type d  | grep -v "^\.$" `
#   do
#   logger "$LOG_MSG Empaquetando sitio: ${dir}"
#   if [ -e "$BACKUP_DIR/$SEMANA/${dir}.tar.gz" ] ; then
#     tar -cpzf $BACKUP_DIR/$SEMANA/$DIA/${dir}_inc.tar.gz -g $BACKUP_DIR/$SEMANA/${dir}.snap ${dir}
#   else
#     tar -cpzf $BACKUP_DIR/$SEMANA/${dir}.tar.gz -g $BACKUP_DIR/$SEMANA/${dir}.snap ${dir}
#   fi
# done

for dir in $DIRECTORIOS
  do
  logger "$LOG_MSG Directorios: ${dir}"
  dirname="`dirname $dir`"
  basename="`basename $dir`"
  nombre="`echo $dir | sed 's/\//-/g'`"
  cd "$dirname"
  if [ -e "$BACKUP_DIR/$SEMANA/${nombre}.tar.gz" ] ; then
    tar -cpzf "$BACKUP_DIR/$SEMANA/$DIA/${nombre}_inc.tar.gz" -g $BACKUP_DIR/$SEMANA/${nombre}.snap ${basename}
  else
    tar -cpzf "$BACKUP_DIR/$SEMANA/${nombre}.tar.gz" -g $BACKUP_DIR/$SEMANA/${nombre}.snap ${basename}
  fi
done

## Borrar directorios viejos.
count=0
for d in $(ls -t $BACKUP_DIR) ; do
  count=$(($count + 1 ))
  if [ $count -gt $GUARDAMOS ] ; then
    logger "$LOG_MSG Borramos $BACKUP_DIR/$d"
    # rm -fr "$BACKUP_DIR/$d" # DEV En pruebas.
  fi
done
