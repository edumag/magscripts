# MagScripts

Scripts útiles para linux.

```
├── administración
│   ├── comparar_directorios
│   └── router_ips_conectadas
├── backup
│   ├── backup.sh
│   └── sincronizar.sh
├── git
│   └── gitmag_status
├── hardware
│   └── informacion_ordenador
├── imagenes
│   ├── archivarFotos
│   ├── logoAimagen
│   └── transformar_imagenes
├── internet
│   ├── buscarEnBlog
│   ├── comprobar_conexion
│   ├── demonioreconexion
│   ├── googleBuscar
│   ├── info_net
│   └── verip
├── juegos
│   ├── dat2zsnes
│   └── xmame_iconos
├── musica
│   ├── anytowav
│   ├── audioconvert
│   ├── cdmp3_lista_caratula
│   ├── cdtomp3
│   ├── convert2mp3
│   ├── crearceaudio
│   ├── movie2sound
│   ├── mp32html
│   ├── mp3basedatos
│   ├── mp3etiquetas
│   ├── mp3nombre
│   ├── mp3nombre2
│   ├── ordenarMp3
│   ├── pasarmp3wav
│   ├── video2audio
│   └── wma2mp3
├── programacion
│   ├── ctags_php
│   ├── ctags_python
│   ├── drupal_instalar.sh
│   └── time2date
├── readme.md
├── servidor
│   ├── ReportServer
│   │   ├── launchers
│   │   │   ├── chkrootkit
│   │   │   ├── clamscan
│   │   │   ├── docker
│   │   │   ├── dokku
│   │   │   ├── fail2ban
│   │   │   ├── firewall
│   │   │   ├── logcheck
│   │   │   ├── lynis
│   │   │   └── system.sh
│   │   └── reportServer.sh
│   └── tunel.sh
├── texto
│   └── traducir
└── utiles
    ├── apagarOrdenador
    ├── pasarLatin1
    └── pasarUTF8
```

## Instalación

- Bajar los scripts desde: https://github.com/edumag/magscripts/archive/develop.zip

- Renombrar la carpeta a "scripts" por ejemplo.

- Añadir a PATH los scripts desde $HOME/.bashrc

  ```
  for x in $HOME/scripts/* ; do if [ -d $x ] ; then PATH="$PATH:$x" ; fi ; done
  export PATH
  ```


