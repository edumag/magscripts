# magscripts


## Listado

- [**administración/comparar_directorios**](#comparar_directorios)	Comparamos estructura de directorios.
- [**backup/backup.sh**](#backup.sh)	Comprobar enlaces rotos
- [**backup/sincronizar.sh**](#sincronizar.sh)	Sincronizamos directorios de un ordenador a otro
- [**git/gitmag_status**](#gitmag_status)	Verificar estado de proyectos con git.
- [**hardware/informacion_ordenador**](#informacion_ordenador)	Presentar por pantalla la información relevante del ordenador
- [**imagenes/archivarFotos**](#archivarFotos)	Automatizar el proceso de archivar las fotos
- [**imagenes/logoAimagen**](#logoAimagen)	Insertar logo en una imagen
- [**imagenes/transformar_imagenes**](#transformar_imagenes)	Transformar una imagen a formato jpg con la anchura o altura especificada
- [**internet/buscarEnBlog**](#buscarEnBlog)	Busqueda en nuestro propio blog.
- [**internet/comprobar_conexion**](#comprobar_conexion)	Testeamos conexión a internet hasta tener resultado positivo.
- [**internet/verip**](#verip)	Muestra nuestra ip actual.
- [**juegos/dat2zsnes**](#dat2zsnes)	Comprobar enlaces rotos
- [**juegos/xmame_iconos**](#xmame_iconos)	Generación de iconos con las imágenes de las roms
- [**musica/ordenarMp3**](#ordenarMp3)	Ordenar mp3 por artistas y albunes.
- [**programacion/ctags_php**](#ctags_php)	ctags para proyectos en php
- [**programacion/ctags_python**](#ctags_python)	ctags para proyectos en python
- [**programacion/time2date**](#time2date)	Convierte fecha en formato unix a formato humano.
- [**launchers/chkrootkit**](#chkrootkit)	Lanzador para chkrootkit.
- [**launchers/clamscan**](#clamscan)	Lanzador para clamscan.
- [**launchers/docker**](#docker)	Estado de docker.
- [**launchers/dokku**](#dokku)	Mostrar estado de dokku.
- [**launchers/fail2ban**](#fail2ban)	Mostar estado de fail2ban.
- [**launchers/firewall**](#firewall)	Mostrar estado del firewall.
- [**launchers/logcheck**](#logcheck)	Mostrar estado de logcheck.
- [**launchers/lynis**](#lynis)	Auditoria con lynis.
- [**launchers/system.sh**](#system.sh)	Mostrar estado del sistema.
- [**ReportServer/reportServer.sh**](#reportServer.sh)	Pequeños scripts para saber el estado del servidor.
- [**servidor/tunel.sh**](#tunel.sh)	Script para hacer tunel ssh inverso
- [**utiles/apagarOrdenador**](#apagarOrdenador)	Revisar estado de trabajo antes de cerrar.
- [**utiles/pasarLatin1**](#pasarLatin1)	Pasar archivos a latin1
- [**utiles/pasarUTF8**](#pasarUTF8)	Pasar archivos a utf-8

## Scripts

<a name="comparar_directorios"/>

### administración/comparar_directorios

```

 comparar_directorios
 Comparamos estructura de directorios.
```

<a name="backup.sh"/>

### backup/backup.sh

```

 backup.sh
 Comprobar enlaces rotos

 Recogemos el numero de la semana y año.
 Si no tenemos directorio creamos una copia total del directorio WWW.
 Si tenemos directorio creamos una copia incremental.

 Para que funcione mysql debe haber un archivo con el usuario y contraseña
 en ~/.my.cnf

 @todo No borramos copias antiguas hasta tener servidor local con replica.
```

<a name="sincronizar.sh"/>

### backup/sincronizar.sh

```

 Sincronizar dos directorios en remoto.
```

<a name="gitmag_status"/>

### git/gitmag_status

```

 gitmag_status
 Verificar estado de proyectos con git.
```

<a name="informacion_ordenador"/>

### hardware/informacion_ordenador

```
 informacion_ordenador

 Presentar por pantalla la información relevante del ordenador

 Nos permite con un solo comando tener un informe de las características del hardware del ordenador

 dependencias: dmidecode lspci fdisk

 @author   Eduardo Magrané

 @internal

       web  http://www.lesolivex.com

      mail  edu.lesolivex.com

  Revision  SVN $Id: $

 Copyright  Copyright (c) 2011, Eduardo Magrané

 This source code is released for free distribution under the terms of the
 GNU General Public License as published by the Free Software Foundation.
```

<a name="archivarFotos"/>

### imagenes/archivarFotos

```
archivarFotos

Automatizar el proceso de archivar las fotos
Características del programa

 - Con este programa y con ayuda de jhead extremos la información de las fotos que queremos guardar.
 - Añadimos fecha de la imagen al nombre de la carpeta donde se guardaran.
 - Giramos las fotos automáticamente.

dependencias: jhead
@author   Eduardo Magrané
@internal
      web  http://www.lesolivex.com
Variables configurables
-----------------------

# Color para el texto que se ha de destacar
var_color_1='[0;33m'

# Directorio predeterminado para guardar las fotos
var_dir_galerias='/home/edumag/fotos'

# Archivo de configuración
var_fich_conf='/home/edumag/.archivarFotosrc'

# Navegador de archivos
var_prog_ver_archivos='xdg-open'
```

<a name="logoAimagen"/>

### imagenes/logoAimagen

```

uso
---


logoAimagen -info, Para más información
```

<a name="transformar_imagenes"/>

### imagenes/transformar_imagenes

```
 transformar_imagenes

 Transformar una imagen a formato jpg con la anchura o altura especificada

 Transformar una imagen a formato jpg con la anchura o altura especificada por el usuario.

 Practico para una conversión rápida de imágenes para por ejemplo enviar por email.

 Ejemplo de utilización de zenity.

 @todo Las imágenes transformadas se guardan en el mismo directorio que las originales, estaría bien poder elegir un directorio diferente"

 dependencias: convert zenity

 Opciones:
 <pre>
 --help | -h              Pantalla de ayuda
 </pre>

 @author   Eduardo Magrané

 @internal

       web  http://www.lesolivex.com

      mail  edu.lesolivex.com

  Revision  SVN $Id: $

 Copyright  Copyright (c) 2011, Eduardo Magrané

 This source code is released for free distribution under the terms of the
 GNU General Public License as published by the Free Software Foundation.
```

<a name="buscarEnBlog"/>

### internet/buscarEnBlog

```

 buscarEnBlog
 Busqueda en nuestro propio blog.
```

<a name="comprobar_conexion"/>

### internet/comprobar_conexion

```

 comprobar_conexion
 Testeamos conexión a internet hasta tener resultado positivo.

 Una vez detectada la vuelta de internet se lanzara reproductor.
```

<a name="verip"/>

### internet/verip

```

 verip
 Muestra nuestra ip actual.
```

<a name="dat2zsnes"/>

### juegos/dat2zsnes

```

 buscar_enlaces_rotos
 Comprobar enlaces rotos
```

<a name="xmame_iconos"/>

### juegos/xmame_iconos

```
 xmame_iconos

 Generación de iconos con las imágenes de las roms

 Creando un directorio que lance directamente los juegos.

 Si se necesitam imágenes de los juegos en internet se pueden encontrar en por
 ejemplo: http://www.progettosnaps.net/snaps_en.html.


 Opciones:
 <pre>
 --help | -h              Pantalla de ayuda
 </pre>

 @author   Eduardo Magrané

 @internal

       web  http://www.lesolivex.com

      mail  edu.lesolivex.com

  Revision  SVN $Id: $

 Copyright  Copyright (c) 2011, Eduardo Magrané

 This source code is released for free distribution under the terms of the
 GNU General Public License as published by the Free Software Foundation.
```

<a name="ordenarMp3"/>

### musica/ordenarMp3

```

 ordenarMp3
 Ordenar mp3 por artistas y albunes.
```

<a name="ctags_php"/>

### programacion/ctags_php

```
 ctags_php

 ctags para proyectos en php

 Generar archivo de ctags para proyecto en php, sobre el directorio donde estamos situados

 dependencias: ctags-exuberant

 @author   Eduardo Magrané

 @internal

       web  http://www.lesolivex.com

      mail  edu.lesolivex.com

  Revision  SVN $Id: $

 Copyright  Copyright (c) 2011, Eduardo Magrané

 This source code is released for free distribution under the terms of the
 GNU General Public License as published by the Free Software Foundation.
```

<a name="ctags_python"/>

### programacion/ctags_python

```

 ctags_python

 ctags para proyectos en python

 Generar archivo de ctags para proyecto en python, sobre el directorio donde estamos situados

 dependencias: ctags-exuberant

 @author   Eduardo Magrané

 @internal

       web  http://www.lesolivex.com

      mail  edu.lesolivex.com

 Copyright  Copyright (c) 2011, Eduardo Magrané

 This source code is released for free distribution under the terms of the
 GNU General Public License as published by the Free Software Foundation.
```

<a name="time2date"/>

### programacion/time2date

```

 time2date
 Convierte fecha en formato unix a formato humano.
```

<a name="chkrootkit"/>

### launchers/chkrootkit

```

Lanzador para chkrootkit
```

<a name="clamscan"/>

### launchers/clamscan

```

Lanzador para clamscan.
```

<a name="docker"/>

### launchers/docker

```

Mostrar estado de docker.
```

<a name="dokku"/>

### launchers/dokku

```

Mostrar estado de dokku.
```

<a name="fail2ban"/>

### launchers/fail2ban

```

Mostar estado de fail2ban.
```

<a name="firewall"/>

### launchers/firewall

```

Mostrar estado del firewall.
```

<a name="logcheck"/>

### launchers/logcheck

```

Mostrar estado de logcheck.
```

<a name="lynis"/>

### launchers/lynis

```

Consejos de seguridad para nuestro servidor.
```

<a name="system.sh"/>

### launchers/system.sh

```

Mostrar estado del sistema.
```

<a name="reportServer.sh"/>

### ReportServer/reportServer.sh

```

 reportServer
 Pequeños scripts para saber el estado del servidor.
```

<a name="tunel.sh"/>

### servidor/tunel.sh

```

 tunel.sh
 Script para hacer tunel ssh inverso

 Fork de David Martí - http://sukiweb.net

 Ejecutar:

 bash <(curl -s https://raw.githubusercontent.com/edumag/magscripts/master/servidor/tunel.sh )

 Referencias: https://es.itcooky.com/?p=142
```

<a name="apagarOrdenador"/>

### utiles/apagarOrdenador

```

 apagarOrdenador
 Revisar estado de trabajo antes de cerrar.

 Apagar ordenador comprobando antes las cosas que nos interesa
 Mirar que no tengamos ningun proyecto con los tiempos abiertos en magtrabajos

 Podemos personalizar un atajo de teclado con la siguiente orden.

 terminator -e /home/edu/desarrollo/magscripts/utiles/apagarOrdenador
```

<a name="pasarLatin1"/>

### utiles/pasarLatin1

```
 pasarLatin1

 Pasar archivos a latin1

 dependencias: vi

 Opciones:
 <pre>
 --help | -h              Pantalla de ayuda
 </pre>

 @author   Eduardo Magrané

 @internal

       web  http://www.lesolivex.com

      mail  edu.lesolivex.com

  Revision  SVN $Id: $

 Copyright  Copyright (c) 2011, Eduardo Magrané

 This source code is released for free distribution under the terms of the
 GNU General Public License as published by the Free Software Foundation.
```

<a name="pasarUTF8"/>

### utiles/pasarUTF8

```
 pasarUTF8

 Pasar archivos a utf-8

 dependencias: vi

 Opciones:
 <pre>
 --help | -h              Pantalla de ayuda
 </pre>

 @author   Eduardo Magrané

 @internal

       web  http://www.lesolivex.com

      mail  edu.lesolivex.com

  Revision  SVN $Id: $

 Copyright  Copyright (c) 2011, Eduardo Magrané

 This source code is released for free distribution under the terms of the
 GNU General Public License as published by the Free Software Foundation.
```


## Instalación

- Bajar los scripts desde: https://codeload.github.com/edumag/magscripts/zip/master

- Renombrar la carpeta a "scripts" por ejemplo.

- Añadir a PATH los scripts desde $HOME/.bashrc

  ```
  for x in $HOME/scripts/* ; do if [ -d $x ] ; then PATH="$PATH:$x" ; fi ; done
  export PATH
  ```


