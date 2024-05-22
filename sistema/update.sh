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
echo
echo "pacman"
echo "-------"
echo
echo "Sincronizando repositorios"
echo
sudo pacman -Sy #Sincroniza repositorios.
echo
echo "Actualizando paquetes"
echo
sudo pacman -Su #Actualiza paquetes.
echo

echo
echo "flatpak"
echo "-------"
echo "flatpak list"
echo
sudo flatpak list
echo
echo "flatpak -v  update"
echo
sudo flatpak update

echo
echo "snap"
echo "----"
echo "snap list"
echo
sudo snap list
echo
echo "snap refresh"
echo
sudo snap refresh
