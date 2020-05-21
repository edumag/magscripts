## Sincronizar dos directorios en remoto.

## @file sincronizar
## @brief Sincronizamos directorios de un ordenador a otro

help() { doxygen2help "$0" ; }

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then help ; exit ; fi

SERVIDOR_REMOTO="user@ejemplo.com:/var/backups/ejemplo"
CARPETA_LOCAL="/var/backups/ejemplo"

rsync -rvzt "$SERVIDOR_REMOTO" "$CARPETA_LOCAL"
