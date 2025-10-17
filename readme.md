# magscripts

Colección de scripts de Bash para automatizar diversas tareas en sistemas Linux
y ayudarnos en tareas de desarrollo de software.

## backup

### magBackup

magBackup es un script para generar copias de seguridad de diferentes orígenes.

*Dependencias*: tar, bzip2, mysqldump, docker, dokku, nice, sudo, date, hostname

### magRsync

Sincronizamos directorios de un ordenador a otro.

*Dependencias*: rsync

## desarrollo

### magBuscarEnlacesRotos

Comprobar enlaces rotos.

*Dependencias*: wget

### magComprobarWeb

Hacer una comprobación para ver si la pagina esta funcionando.

*Dependencias*: curl

### magLastModifiedFiles

listamos los últimos archivos que han sido modificados.

*Dependencias*: find, grep, sed

### magText2json

convert text to json.

*Dependencias*: xclip, jq, vim

### magUrlDecode

URL decode.

*Dependencias*:

### magUrlEncode

URL encode.

*Dependencias*:

### magVimBrokenSessions

Buscar sesiones de vim abiertas y borrarlas.

*Dependencias*: find

### magVimRemote

Abrir archivo en sesión de vim abierta.

*Dependencias*: xclip, vim

### magVimServer

Abrir vim en modo servidor y en caso de que exista Session.vim, cargarla.

*Dependencias*: vim

## git

### magGitAddedOrModifiedFiles

Mostrar lista de los ficheros añadidos o modificados en un repositorio Git.

*Dependencias*: git

### magGitCambiosRealizados

Lista de los commits de git.

*Dependencias*: git

### magGitStatusAll

Verificar estado de proyectos con git.

*Dependencias*: git

## imagenes

### magLogoInImage

Añadir un logo a una imagen.

*Dependencias*: composite, zenity

### magTransformarImagenes

Transformar una imagen a formato jpg con la anchura o altura especificada.

*Dependencias*: convert, zenity

## internet

### magComprobarConexion

Testeamos conexión a internet hasta tener resultado positivo.

*Dependencias*: ping, notify-send

### magVerIp

Muestra nuestra ip actual.

*Dependencias*: curl

## servidor

### magReportServer

Pequeños scripts para saber el estado del servidor.

*Dependencias*:

### magGoAccessInServer

Automatiza la generación y visualización de un informe de análisis de logs de acceso web utilizando goaccess.

*Dependencias*: ssh, scp, docker, xdg-open

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

Stop all containers, delete and purge.

*Dependencias*: docker

### magLiberarMemoria

Liberar memoria del sistema.

*Dependencias*: sync, sysctl

### magSoftwareSearch

Buscar software disponible en los diferentes sistemas de paquetes.

*Dependencias*: apt-get, pacman, snap, flatpak

### magSoftwareUpdate

Actualización de software en todos los formatos de paquetes.

*Dependencias*: pacman, npm, flatpak, snap, apt-get

## texto

### magMd2html

Convert markdown to HTML.

*Dependencias*: pandoc, xdg-open

### magMd2pdf

Convert markdown to PDF.

*Dependencias*: pandoc, xelatex, xdg-open

## utiles

### magApagar

Revisar estado de trabajo antes de cerrar.

*Dependencias*: ddev, magtrabajos, gitmag_status, magbackup, poweroff, ps, grep, tput

### magCopyTextCapture

Script para tomar una captura de pantalla de una porción de la pantalla y extraer el texto de ella.

*Dependencias*: zenity, ksnip, tesseract, xclip

### magDate2time

Convierte fecha en formato unix a formato humano.

*Dependencias*: date

### magPass

Imprimir contraseña de comando.

*Dependencias*:

### magTime2date

Convierte fecha en formato unix a formato humano.

*Dependencias*: date

## video

### magVideo2web

Convertir vídeo a formato web.

*Dependencias*: mencoder, ffmpeg
