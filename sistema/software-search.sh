#!/bin/bash

which apt-get > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
  echo "apt-get | sudo apt-get install <package>"
  echo "-------"
  apt-cache search $@
fi

which pacman > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
  echo "pacman | sudo pacman -S <package>"
  echo "------"
  pacman -Ss $@
fi

which snap > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
  echo
  echo "snap | sudo snap install <package>"
  echo "----"
  snap search $@
fi

which flatpak > /dev/null 2>&1
if [[ $? -eq 0 ]] ; then
  echo
  echo "flatpak | sudo flatpak install <package>"
  echo "-------"
  flatpak search $@
fi
