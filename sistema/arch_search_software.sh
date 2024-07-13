#!/bin/bash

echo "pacman"
echo "------"

pacman -Ss $@

echo
echo "snap"
echo "----"

snap search $@

echo
echo "flatpak"
echo "-------"

flatpak search $@





