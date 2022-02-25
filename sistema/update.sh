#!/bin/bash

echo
echo "pkcon"
echo "-----"
echo "pkcon refresh force -y"
echo
pkcon refresh force -y
echo
echo "pkcon get-update"
echo
pkcon get-updates
echo
echo "pkcon update"
echo
pkcon update -y

echo
echo "flatpak"
echo "-------"
echo "flatpak list"
echo
flatpak list
echo
echo "flatpak -v  update"
echo
flatpak update

echo
echo "snap"
echo "----"
echo "snap list"
echo
snap list
echo
echo "snap refresh"
echo
snap refresh

echo
echo "Limpieza"
echo "--------"
echo "sudo apt autoremove"
echo
sudo apt autoremove


