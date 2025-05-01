# magscripts

Scripts para linux que nos facilitan la vida.

## Instalación

- Bajar los scripts desde: https://codeload.github.com/edumag/magscripts/zip/master

- Renombrar la carpeta a "scripts" por ejemplo.

- Añadir a PATH los scripts desde $HOME/.bashrc

  ```
  for x in $HOME/scripts/* ; do if [ -d $x ] ; then PATH="$PATH:$x" ; fi ; done
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
├── administración
│   └── comparar_directorios: Compara dos directorios y muestra las diferencias.
├── backup
│   ├── backup.sh: Realiza un backup de archivos seleccionados.
│   └── sincronizar.sh: Sincroniza dos directorios.
├── desarrollo
│   ├── ctags_php: Genera tags para PHP.
│   ├── ctags_python: Genera tags para Python.
│   ├── ctags_vue: Genera tags para Vue.js.
│   ├── test_rest.sh: Realiza pruebas RESTful.
│   ├── text2json: Convierte texto a formato JSON.
│   ├── time2date: Convierte timestamp a fecha legible.
│   ├── urldecode.sh: Decodifica URLs.
│   ├── urlencode.sh: Codifica URLs.
│   ├── vimremote: Configura Vim para acceso remoto.
│   ├── vimserver: Configura un servidor Vim.
│   └── vue.ctags: Genera tags para Vue.js.
├── git
│   ├── gitmag_status: Muestra el estado del repositorio Git.
│   └── magGitAddedOrModifiedFiles: Muestra archivos añadidos o modificados en el último commit.
├── hardware
│   └── informacion_ordenador: Muestra información del sistema.
├── imagenes
│   ├── archivarFotos: Archiva fotos seleccionadas.
│   ├── logoAimagen: Convierte logos a formato de imagen.
│   └── transformar_imagenes: Transforma imágenes según parámetros especificados.
├── internet
│   ├── buscarEnBlog: Busca en un blog específico.
│   ├── comprobar_conexion: Comprueba la conexión a Internet.
│   └── verip: Muestra la dirección IP actual.
├── juegos
│   ├── dat2zsnes: Convierte archivos de datos a formato ZSNES.
│   └── xmame_iconos: Crea iconos para XMAME.
├── musica
│   └── ordenarMp3: Ordena y clasifica archivos MP3.
├── servidor
│   ├── ReportServer
│   │   ├── launchers
│   │   │   ├── chkrootkit: Ejecuta chkrootkit.
│   │   │   ├── clamscan: Ejecuta clamscan.
│   │   │   ├── docker: Gestiona contenedores Docker.
│   │   │   ├── dokku: Gestiona Dokku.
│   │   │   ├── fail2ban: Configura y ejecuta fail2ban.
│   │   │   ├── firewall: Configura el firewall.
│   │   │   ├── logcheck: Ejecuta logcheck.
│   │   │   ├── lynis: Ejecuta Lynis.
│   │   │   ├── system.sh: Script de sistema.
│   │   │   └── whois_list: Lista registros WHOIS.
│   │   ├── Readme.md: Documentación del servidor.
│   │   └── reportServer.sh: Genera un informe del servidor.
│   └── tunel.sh: Configura un túnel SSH.
├── sistema
│   ├── docker_clean_all: Limpia todos los contenedores Docker.
│   ├── software-search.sh: Busca software en el sistema.
│   └── software-update.sh: Actualiza el software del sistema.
├── texto
│   ├── md2html: Convierte archivos Markdown a HTML.
│   └── md2pdf: Convierte archivos Markdown a PDF.
└── utiles
    ├── apagarOrdenador: Apaga el ordenador.
    ├── pasarLatin1: Cambia la codificación de Latin1 a UTF-8.
    └── pasarUTF8: Cambia la codificación de UTF-8 a Latin1.
```
