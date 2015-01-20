# MagScript #

Scripts útiles para linux.

Documentación: http://lesolivex.com/dox/magscripts/doxygen/html/files.htm

~~~~
.
|-- hardware
|   `-- informacion_ordenador
|-- imagenes
|   |-- archivarFotos
|   |-- logoAimagen
|   `-- transformar_imagenes
|-- juegos
|   `-- xmame_iconos
|-- mp4
|   |-- multimedia_players
|   `-- multimedia_players.png
|-- programacion
|   |-- ctags_php
|   `-- time2date
|-- readme.dox
|-- sistema
|   `-- memoria_liberar_ram
`-- utiles
     |-- abrir_terminal 
     |-- agenda
     |-- alarma 
     |-- cambiarNombreAutf8 
     |-- copiarAlPortapapeles 
     |-- despuesacabe 
     |-- espacioEnDisco 
     |-- evolution2csv
     |-- hardware 
     |-- imagenes 
     |-- jpg2jpeg 
     |-- juegos 
     |-- mp4 
     |-- mysql2sqlite3.sh 
     |-- numerosformateados 
     |-- pasarLatin1
     |-- pasarUTF8
     |-- programacion 
     |-- ps2caras 
     |-- readme.dox 
     |-- recuerda 
     |-- repetircomando 
     `-- texto2voz
~~~~

## Instalación ##

- Bajar los scripts desde: https://github.com/edumag/magscripts/archive/develop.zip

- Renombrar la carpeta a "scripts" por ejemplo.

- Añadir a PATH los scripts desde $HOME/.bashrc

  ~~~~
  for x in $HOME/scripts/* ; do if [ -d $x ] ; then PATH="$PATH:$x" ; fi ; done
  export PATH
  ~~~~


