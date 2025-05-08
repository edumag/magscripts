#!/bin/bash
## @file video2web
## @brief Convertir vídeo a formato web.

help() { doxygen2help "$0" ; }

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then help ; exit ; fi

video="$1"
salida="$2"
escala="900:402"

# Solo escalamos.

mencoder -ovc lavc -oac pcm -vf scale=900:402 -o "escalado-${video}" "$video"

# Con vlc podemos pasarlo a theodora / vorbis

exit

# No funciona
mencoder -ovc lavc -lavcopts vcodec=libvpx:vbitrate=500:threads=2 -of lavf -lavfopts format=webm -ffourcc VP80 -oac lavc -lavcopts acodec=libvorbis -o "${salida}.webm" "$video"

# MP4
ffmpeg -i "$video" -threads 2 -f webm -vcodec libvpx -b:v 500k -acodec libvorbis -ac 2 -ab 48k "${salida}.webm"

exit

ffmpeg -i "$video" -vf "scale=$escala" -f webm -vcodec libvpx -acodec libvorbis "${salida}.webm"

ffmpeg -i "$video"  -vcodec h264 -vf "scale=$escala" -acodec aac -b:a 128k -strict -2 "${salida}.mp4"

# OGG

ffmpeg -i "$video"  -vcodec libtheora -qscale:v 7 -vf "scale=$escala" -acodec libvorbis -qscale:a 5 "${salida}.ogg"
