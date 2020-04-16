## Sincronizar dos directorios en remoto.

SERVIDOR_REMOTO="user@ejemplo.com:/var/backups/ejemplo"
CARPETA_LOCAL="/var/backups/ejemplo"

rsync -rvzt administrador@dl218.dinaserver.com:/var/backups/example/2016-38/lunes/ /var/backups/example/
