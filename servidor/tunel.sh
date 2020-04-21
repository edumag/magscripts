#!/bin/bash

## Script para hacer tunel ssh inverso
## Fork de David Martí - http://sukiweb.net
##
## Ejecutar:
##
## bash <(curl -s https://raw.githubusercontent.com/edumag/magscripts/master/servidor/tunel.sh )
##
## Referencias: https://es.itcooky.com/?p=142

USUARIO_TUNEL="tuneluser"
PUERTO_TUNEL="2048"

SERVIDOR_REMOTO="lesolivex.com"
PUERTO_SERVIDOR_REMOTO="5775"

# En caso de ser necesario instalar el servidor ssh.
dpkg -l | grep openssh-server >/dev/null

if [ "$?" != "0" ] ; then
    sudo apt-get install openssh-server
fi


cat <<EOF

ADMINISTRACIÍON REMOTA

Se va a proceder a la conexión remota de este equipo con el servidor: $SERVIDOR_REMOTO

Mantenga esta ventana abierta mientras desee mantener la conexión.

Teclee a continuación la clave que se le ha proporcionado.

EOF


TUNEL="ssh -l $USUARIO_TUNEL -R $PUERTO_TUNEL:localhost:22 -N $SERVIDOR_REMOTO -p $PUERTO_SERVIDOR_REMOTO"

#echo $TUNEL

echo -e "$TEXTO"

$TUNEL

# xterm -title "Administración Remota" -e "eval \"$TEXTO\"; $TUNEL"
