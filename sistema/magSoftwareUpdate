#!/bin/bash

echo
echo "pacman"
echo "------"
echo
which pacman > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
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
else
    echo "Nada que hacer"
fi

echo
echo "npm"
echo "---"
echo
which npm -g outdated > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
    echo -e "\nnpm\n---"
    echo -e "npm -g outdated"
    echo "npm -g update"
    npm -g update
else
    echo "Nada que hacer"
fi

echo
echo "flatpak"
echo "-------"
echo
which flatpak > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
    echo "flatpak list"
    sudo flatpak list
    echo
    echo "flatpak update -y"
    sudo flatpak update -y
else
    echo "Nada que hacer"
fi

echo
echo "snap"
echo "----"
echo
which snap > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
    echo "snap list"
    sudo snap list
    echo
    echo "snap refresh"
    sudo snap refresh
else
    echo "Nada que hacer"
fi

echo
echo "apt-get"
echo "-------"
echo
which apt-get > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
    echo 'apt-get update && apt-get upgrade && apt-get dist-upgrade && apt-get autoremove && apt-get autoclean'
    sudo apt-get update
    sudo apt-get upgrade -y
    sudo apt-get dist-upgrade -y
    sudo apt-get autoremove -y
    sudo apt-get autoclean -y
    echo
else
    echo "Nada que hacer"
fi
