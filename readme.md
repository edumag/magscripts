# magscripts

## backup

### magBackup
magBackup es un script para generar copias de seguridad de diferentes orígenes.

*Dependencias*: tar, bzip2, mysqldump, docker, dokku, nice, sudo, date, hostname

### magRsync
Sincronizamos directorios de un ordenador a otro

*Dependencias*: rsync

## desarrollo

### magBuscarEnlacesRotos
Comprobar enlaces rotos

*Dependencias*: wget

### magComprobarWeb
Hacer una comprobación para ver si la pagina esta funcionando

*Dependencias*: curl

### magLastModifiedFiles
listamos los últimos archivos que han sido modificados

*Dependencias*: find, grep, sed

### magText2json
Convert text to JSON using jq.

*Dependencias*: xclip, jq, vim

### magUrlDecode
URL decode input.

*Dependencias*:

### magUrlEncode
URL encode input.

*Dependencias*:

### magVimBrokenSessions
Find and optionally delete vim swap files.

*Dependencias*: find

### magVimRemote
Send file to vim server.

*Dependencias*: xclip, vim

### magVimServer
Start vim server with session if exists.

*Dependencias*: vim

## git

### magGitAddedOrModifiedFiles
Script para listar los ficheros añadidos o modificados en un repositorio Git.

*Dependencias*: git

### magGitCambiosRealizados
Muestra los cambios realizados desde git.

*Dependencias*: git

### magGitStatusAll
Verificar estado de proyectos con git.

*Dependencias*: git

## imagenes

### magLogoAimagen
Insertar logo en una imagen

*Dependencias*: composite, zenity

### magTransformarImagenes
Transformar una imagen a formato jpg con la anchura o altura especificada

*Dependencias*: convert, zenity

## internet

### magComprobarConexion
Testeamos conexión a internet hasta tener resultado positivo.

*Dependencias*: ping, notify-send

### magVerIp
Muestra nuestra ip actual.

*Dependencias*: curl

## servidor

### tunel.sh
Script para hacer tunel ssh inverso

*Dependencias*: ssh, dpkg, apt-get, sudo

### reportServer.sh
Pequeños scripts para saber el estado del servidor.

*Dependencias*:

### chkrootkit
Lanzador para chkrootkit.

*Dependencias*: chkrootkit

### clamscan
Lanzador para clamscan.

*Dependencias*: freshclam, clamscan

### docker
Estado de docker.

*Dependencias*: docker

### dokku
Mostrar estado de dokku.

*Dependencias*: dokku

### fail2ban
Mostar estado de fail2ban.

*Dependencias*: fail2ban-client, zgrep, awk, sort, uniq, tee, whois

### firewall
Mostrar estado del firewall.

*Dependencias*: iptables

### logcheck
Mostrar estado de logcheck.

*Dependencias*: sudo, logcheck

### lynis
Auditoria con lynis.

*Dependencias*: lynis

### system.sh
Mostrar estado del sistema.

*Dependencias*: ps, free

### whois_list
Mostar info de IPs.

*Dependencias*: whois, grep, cut, colrm, tee

## sistema

### magDockerCleanAll
Script para limpiar todos los contenedores, imágenes y volúmenes de Docker.

*Dependencias*: docker

### magLiberarMemoria
Liberar memoria del sistema.

*Dependencias*: sync, sysctl

### magSoftwareSearch
Buscar software disponible en el sistema.

*Dependencias*: apt-get, pacman, snap, flatpak

### magSoftwareUpdate
Actualizar software en el sistema.

*Dependencias*: pacman, npm, flatpak, snap, apt-get

## texto

### magMd2html
Convert markdown to HTML using pandoc.

*Dependencias*: pandoc, xdg-open

### magMd2pdf
Convert markdown to PDF using pandoc.

*Dependencias*: pandoc, xelatex, xdg-open

## utiles

### magApagar
Revisar estado de trabajo antes de cerrar.

*Dependencias*: ddev, magtrabajos, gitmag_status, magbackup, poweroff, ps, grep, tput

### magCopyTextCapture
Take screenshot and extract text to clipboard.

*Dependencias*: zenity, ksnip, tesseract, xclip

### magDate2time
Convierte fecha en formato unix a formato humano.

*Dependencias*: date

### magPass
Imprimir contraseña de comando

*Dependencias*:

### magTime2date
Convierte fecha en formato unix a formato humano.

*Dependencias*: date

## video

### magVideo2web
Convertir vídeo a formato web.

*Dependencias*: mencoder, ffmpeg
