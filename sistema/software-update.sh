#!/bin/bash

## KDE Neon.
# echo
# echo "pkcon"
# echo "-----"
# echo "pkcon refresh force -y"
# echo
# sudo pkcon refresh force -y
# echo
# echo "pkcon get-update"
# echo
# sudo pkcon get-updates
# echo
# echo "pkcon update"
# echo
# sudo pkcon update -y

## pacman
#
# https://www.busindre.com/guia_rapida_y_completa_de_pacman_arch
#
# #Instalar paquetes
# pacman -S “paquete” #Instala un paquete.
# pacman -Sy “paquete” #Sincroniza repositorios e instala el paquete.
#
# # Actualizar paquetes
# pacman -Sy #Sincroniza repositorios.
# pacman -Syy #Fuerza la sincronización de repositorios incluso para paquetes que parecen actualizados.
# pacman -Syu #Sincroniza repositorios y actualiza paquetes.
# pacman -Syyu #Fuerza sincronización y actualiza paquetes.
# pacman -Su #Actualiza paquetes sin sincronizar repositorios.
#
# # Buscar paquetes
# pacman -Ss “paquete” #Busca un paquete.
# pacman -Si “paquete” #Muestra información detallada de un paquete.
# pacman -Sg “grupo” #Lista los paquetes que pertenecen a un grupo.
# pacman -Qs “paquete” #Busca un paquete YA instalado.
# pacman -Qi “paquete” #Muestra información detallada de un paquete YA instalado.
# pacman -Qdt #Muestra paquetes huerfanos.
#
# # Eliminar paquetes
# pacman -R “paquete” #Borra paquete sin sus dependencias.
# pacman -Rs “paquete” #Borra paquete y sus dependencias no utilizadas.
#
# En caso de conflictos podemos actualizar mirando de ignorar los paquetes afectados
# pacman -Syu --ignore llvm-libs,pipewire-pulse
#
which pacman > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
  echo
  echo "pacman"
  echo "-------"
  echo
  echo "Sincronizando repositorios"
  echo pacman -Sy
  sudo pacman -Sy #Sincroniza repositorios.
  echo
  echo "Actualizando paquetes"
  echo pacman -Su
  sudo pacman -Su #Actualiza paquetes.
  if [ ! $? -eq 0 ] ; then
      echo
      echo "En caso de conflictos podemos actualizar mirando de ignorar los paquetes afectados"
      echo "Ejemplo: pacman -Syu --ignore llvm-libs,pipewire-pulse"
      read -p "Presione [Enter] para continuar..."
  fi
  echo
  echo "Eliminando paquetes huerfanos"
  echo 'pacman -Rs $(pacman -Qtdq)'
  echo
  sudo pacman -Rs $(pacman -Qtdq) 2> /dev/null
fi

which flatpak > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
  echo
  echo "flatpak"
  echo "-------"
  echo
  echo "flatpak list"
  sudo flatpak list
  echo
  echo "flatpak update"
  sudo flatpak update
fi

which snap > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
  echo
  echo "snap"
  echo "----"
  echo
  echo "snap list"
  sudo snap list
  echo
  echo "snap refresh"
  sudo snap refresh
fi

which apt-get > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
  echo
  echo "apt-get"
  echo "-------"
  echo
  echo 'apt-get update && apt-get upgrade && apt-get dist-upgrade && apt-get autoremove && apt-get autoclean'
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get dist-upgrade
  sudo apt-get autoremove
  sudo apt-get autoclean
  echo
fi
