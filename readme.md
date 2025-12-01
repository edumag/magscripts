# magscripts

Colección de scripts de Bash para automatizar diversas tareas en sistemas Linux y ayudarnos en tareas de desarrollo de software.

## backup

### magBackup

magBackup facilita la creación de copias de seguridad automáticas para tus archivos, bases de datos MySQL y PostgreSQL, tanto locales como en contenedores Docker o Dokku. Organiza las copias en archivos mensuales completos y diarios incrementales para optimizar el espacio y la recuperación.

*Dependencias*: tar, bzip2, mysqldump, docker, dokku, nice, sudo, date, hostname

### magRsync

magRsync permite sincronizar directorios entre diferentes ordenadores de manera eficiente, utilizando rsync para transferir solo los cambios y mantener tus archivos actualizados en múltiples ubicaciones.

*Dependencias*: rsync

## desarrollo

### magBuscarEnlacesRotos

magBuscarEnlacesRotos escanea tu sitio web para detectar enlaces rotos, generando un reporte detallado que te ayuda a mantener la integridad y usabilidad de tu página web.

*Dependencias*: wget

### magComprobarWeb

magComprobarWeb verifica rápidamente si tu sitio web está operativo, realizando comprobaciones básicas de conectividad para asegurarte de que tus visitantes puedan acceder sin problemas.

*Dependencias*: curl

### magLastModifiedFiles

magLastModifiedFiles te muestra una lista de los archivos modificados recientemente en un directorio, ideal para rastrear cambios en proyectos de desarrollo o mantener un registro de actividades recientes.

*Dependencias*: find, grep, sed

### magText2json

magText2json transforma archivos de texto plano en formato JSON, facilitando la integración de datos textuales en aplicaciones que requieren estructuras de datos más organizadas.

*Dependencias*: xclip, jq, vim

### magUrlDecode

magUrlDecode decodifica URLs codificadas, convirtiendo caracteres especiales de vuelta a su forma legible, útil para trabajar con enlaces web y parámetros de consulta.

*Dependencias*:

### magUrlEncode

magUrlEncode codifica URLs, convirtiendo caracteres especiales en su representación segura para web, asegurando que tus enlaces funcionen correctamente en navegadores y servidores.

*Dependencias*:

### magVimBrokenSessions

magVimBrokenSessions identifica y elimina sesiones rotas de Vim que pueden quedar abiertas, liberando recursos del sistema y evitando conflictos al editar archivos.

*Dependencias*: find

### magVimRemote

magVimRemote te permite abrir archivos en una sesión existente de Vim desde cualquier lugar, facilitando la edición remota y colaborativa de código.

*Dependencias*: xclip, vim

### magVimServer

magVimServer inicia Vim en modo servidor, cargando automáticamente sesiones guardadas para retomar tu trabajo exactamente donde lo dejaste.

*Dependencias*: vim

## git

### magGitAddedOrModifiedFiles

magGitAddedOrModifiedFiles muestra una lista clara de los archivos añadidos o modificados en tus repositorios Git, ayudándote a revisar cambios antes de hacer commits.

*Dependencias*: git

### magGitCambiosRealizados

magGitCambiosRealizados lista todos los commits realizados en un repositorio Git, proporcionando un historial completo de los cambios para seguimiento y auditoría.

*Dependencias*: git

### magGitStatusAll

magGitStatusAll verifica el estado de múltiples proyectos Git de una vez, alertándote sobre cambios sin commitear o repositorios que necesitan atención.

*Dependencias*: git

## imagenes

### magLogoInImage

magLogoInImage añade automáticamente un logo a tus imágenes, permitiéndote personalizar la posición y crear versiones marcadas de tus fotos de manera eficiente.

*Dependencias*: composite, zenity

### magTransformarImagenes

magTransformarImagenes convierte imágenes al formato JPG con dimensiones específicas, optimizando tus archivos para web o presentaciones sin perder calidad.

*Dependencias*: convert, zenity

## internet

### magComprobarConexion

magComprobarConexion monitorea continuamente la conexión a internet, notificándote cuando se restablece después de una interrupción para mantenerte informado.

*Dependencias*: ping, notify-send

### magDeviceListLocal

magDeviceListLocal lista los dispositivos conectados en la red local utilizando nmap para escanear la red.

*Dependencias*: nmap, hostname, cut, sudo

### magLocapIp

magLocapIp muestra la dirección IP local del sistema.

*Dependencias*: hostname, cut

### magVerIp

magVerIp muestra tu dirección IP actual de manera rápida, útil para configuraciones de red o conexiones remotas.

*Dependencias*: curl

## servidor

### magReportServer

magReportServer ejecuta una serie de scripts para generar un reporte completo del estado del servidor, incluyendo seguridad, servicios y rendimiento.

*Dependencias*:

### magGoAccessInServer

magGoAccessInServer automatiza la generación y visualización de informes de análisis de logs de acceso web usando GoAccess, facilitando el monitoreo del tráfico del servidor.

*Dependencias*: ssh, scp, docker, xdg-open

### chkrootkit

chkrootkit es un lanzador para el escáner de rootkits chkrootkit, ayudando a detectar posibles compromisos de seguridad en el sistema.

*Dependencias*: chkrootkit

### clamscan

clamscan es un lanzador para el antivirus ClamAV, permitiendo escanear archivos en busca de malware de manera programada.

*Dependencias*: freshclam, clamscan

### docker

docker proporciona un estado rápido de los contenedores Docker en ejecución, facilitando la gestión y monitoreo de entornos contenerizados.

*Dependencias*: docker

### dokku

dokku muestra el estado de las aplicaciones desplegadas con Dokku, ofreciendo una visión general de tus despliegues en la nube.

*Dependencias*: dokku

### fail2ban

fail2ban reporta el estado del servicio fail2ban, incluyendo IPs bloqueadas por intentos de intrusión, para mantener la seguridad del servidor.

*Dependencias*: fail2ban-client, zgrep, awk, sort, uniq, tee, whois

### firewall

firewall muestra el estado actual del firewall iptables, permitiéndote verificar las reglas de seguridad activas en el sistema.

*Dependencias*: iptables

### logcheck

logcheck analiza los logs del sistema en busca de eventos inusuales, enviando reportes por email para alertas de seguridad.

*Dependencias*: sudo, logcheck

### lynis

lynis ejecuta una auditoría completa de seguridad del sistema usando Lynis, proporcionando recomendaciones para mejorar la protección.

*Dependencias*: lynis

### system.sh

system.sh muestra información detallada sobre el estado del sistema, incluyendo procesos en ejecución y uso de memoria.

*Dependencias*: ps, free

### whois_list

whois_list obtiene información detallada sobre listas de IPs usando whois, útil para investigar direcciones sospechosas.

*Dependencias*: whois, grep, cut, colrm, tee

## sistema

### magDockerCleanAll

magDockerCleanAll detiene todos los contenedores Docker, elimina imágenes no utilizadas y limpia el sistema para liberar espacio y recursos.

*Dependencias*: docker

### magLiberarMemoria

magLiberarMemoria optimiza el uso de memoria del sistema, liberando caché y buffers para mejorar el rendimiento cuando es necesario.

*Dependencias*: sync, sysctl

### magSoftwareSearch

magSoftwareSearch busca software disponible en múltiples gestores de paquetes (apt, pacman, snap, flatpak), facilitando la instalación de programas.

*Dependencias*: apt-get, pacman, snap, flatpak

### magSoftwareUpdate

magSoftwareUpdate actualiza todos los paquetes del sistema a través de diferentes gestores, manteniendo tu Linux al día con las últimas versiones.

*Dependencias*: pacman, npm, flatpak, snap, apt-get

## texto

### magMd2html

magMd2html convierte archivos Markdown a HTML usando plantillas personalizadas, generando páginas web atractivas desde texto plano.

*Dependencias*: pandoc, xdg-open

### magMd2pdf

magMd2pdf transforma documentos Markdown en PDFs de alta calidad, perfectos para compartir o imprimir documentación técnica.

*Dependencias*: pandoc, xelatex, xdg-open

### magTranslate

magTranslate traduce texto utilizando la API de Google Translate, convirtiendo texto entre idiomas.

*Dependencias*: curl

## utiles

### magApagar

magApagar verifica el estado de tus trabajos y sesiones antes de apagar el ordenador, asegurándose de que no pierdas trabajo sin guardar.

*Dependencias*: ddev, magtrabajos, gitmag_status, magbackup, poweroff, ps, grep, tput

### magCopyTextCapture

magCopyTextCapture toma una captura de pantalla de una porción seleccionada y extrae el texto usando OCR, convirtiendo imágenes en texto editable.

*Dependencias*: zenity, ksnip, tesseract, xclip

### magDate2time

magDate2time convierte fechas en formato humano a timestamps Unix, útil para scripting y manipulación de fechas en programas.

*Dependencias*: date

### magFzf

magFzf integra fzf con previsualización personalizada para una búsqueda interactiva mejorada de archivos.

*Dependencias*: fzf, magFzfPreview

### magFzfPreview

magFzfPreview proporciona previsualización avanzada de archivos e imágenes en fzf, mejorando la navegación interactiva.

*Dependencias*: bat, chafa, imgcat, file

### magHelp

magHelp consulta cheatsheets desde cheat.sh para obtener ayuda rápida sobre comandos y lenguajes de programación.

*Dependencias*: curl

### magPass

magPass imprime contraseñas de comandos de manera segura, gestionando credenciales para scripts automatizados.

*Dependencias*:

### magText2Filename

magText2Filename convierte frases en nombres de archivos válidos, transliterando caracteres especiales a ASCII.

*Dependencias*: xclip, sed, iconv

### magTime2date

magTime2date transforma timestamps Unix en fechas legibles, facilitando la interpretación de tiempos en logs y bases de datos.

*Dependencias*: date

## video

### magVideo2web

magVideo2web convierte vídeos a formatos optimizados para web, reduciendo el tamaño y mejorando la compatibilidad para streaming online.

*Dependencias*: mencoder, ffmpeg