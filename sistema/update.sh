#!/bin/bash

echo
echo "pkcon"
echo "-----"
echo "pkcon refresh force -y"
echo
sudo pkcon refresh force -y
echo
echo "pkcon get-update"
echo
sudo pkcon get-updates
echo
echo "pkcon update"
echo
sudo pkcon update -y

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

echo
echo "Limpieza"
echo "--------"
echo "sudo apt autoremove"
echo
sudo apt autoremove


