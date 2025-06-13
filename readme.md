# magscripts

Scripts para linux que nos facilitan la vida.

## Instalación

- Bajar los scripts desde: https://codeload.github.com/edumag/magscripts/zip/master

- Renombrar la carpeta a "scripts" por ejemplo.

- Añadir a PATH los scripts desde $HOME/.bashrc

  ```
  for x in $HOME/magscripts/* ; do if [ -d $x ] ; then PATH="$PATH:$x" ; fi ; done
  export PATH
  ```

### En nautilus

```
cd .local/share/nautilus/scripts
ln -s $HOME/scripts ./
```

## Listado

```
.
├── backup
│   ├── backup.sh: Realizar un respaldo general del sistema.
│   ├── magbackup: Muestra información sobre el uso de almacenamiento en disco.
│   ├── magbackup_sync: Sincroniza los backups realizados con `magbackup`.
│   └── sincronizar.sh: Script para realizar la sincronización de archivos y directorios.
├── desarrollo
│   ├── buscar_enlaces_rotos: Buscar enlaces rotos en un sitio web.
│   ├── buscar_sesiones_vim_interrumpidas: Continuar sesiones Vim interrumpidas.
│   ├── comprobar_web: Comprobar el estado de una o varias páginas web.
│   ├── text2json: Convertir texto a formato JSON.
│   ├── time2date: Convertir tiempo en segundos a fecha y hora legible.
│   ├── ultimos_archivos_modificados: Listar los últimos archivos modificados en un directorio.
│   ├── urldecode.sh: Decodificar caracteres urlencoded.
│   ├── urlencode.sh: Codificar caracteres para usarlos en una URL.
│   ├── vimremote: Interactuar con Vim a través de redes.
│   └── vimserver: Servidor remoto para interactuar con Vim.
├── git
│   ├── git-cambios-realizados: Mostrar los cambios realizados en el repositorio Git.
│   ├── gitmag_status: Obtener el estado del repositorio Git.
│   └── magGitAddedOrModifiedFiles: Listar archivos añadidos o modificados en el último commit.
├── hardware
│   └── informacion_ordenador: Mostrar información detallada sobre el ordenador, como CPU, memoria RAM y disco duro.
├── imagenes
│   ├── logoAimagen: Convertir una imagen a formato de texto para su visualización en la terminal.
│   └── transformar_imagenes: Script para procesar y transformar imágenes.
├── internet
│   ├── buscarEnBlog: Buscar publicaciones en un blog.
│   ├── comprobar_conexion: Comprobar la conexión a internet.
│   └── verip: Mostrar la dirección IP pública o privada.
├── lib
│   ├── configuracion: Contenido de configuración específico del proyecto.
│   ├── doxygen2help: Generar documentación en formato HTML usando Doxygen.
│   ├── elegirArchivo: Seleccionar un archivo desde el sistema de archivos.
│   ├── general: Archivos misceláneos sin categoría específica.
│   ├── libash.conf: Configuración personalizada para el shell Bash.
│   ├── listado: Listado de elementos en un directorio o repositorio.
│   ├── mysql2rst: Convertir bases de datos MySQL a formato reStructuredText.
│   ├── pantalla: Mostrar información gráfica sobre la terminal.
│   └── readme.md: Documentación básica del proyecto.
├── servidor
│   ├── ReportServer
│   │   ├── launchers
│   │   │   ├── chkrootkit: Ejecutar verificación de rootkit con ChkRootKit.
│   │   │   ├── clamscan: Ejecutar escaneo antivirus con ClamScan.
│   │   │   ├── docker: Administrar contenedores Docker.
│   │   │   ├── dokku: Administrar la plataforma PaaS Dokku.
│   │   │   ├── fail2ban: Prevenir ataques de fuerza bruta con Fail2Ban.
│   │   │   ├── firewall: Configurar el firewall del sistema.
│   │   │   ├── logcheck: Verificar y gestionar logs del sistema.
│   │   │   ├── lynis: Realizar auditoría de seguridad con Lynis.
│   │   │   ├── system.sh: Script para obtener información detallada del sistema.
│   │   │   └── whois_list: Listar dominios WHOIS.
│   │   ├── Readme.md: Documentación general del servidor.
│   │   └── reportServer.sh: Generar informes de estado del servidor.
│   └── tunel.sh: Crear
```
