#!/bin/bash

## @file reportServer
## @brief Pequeños scripts para saber el estado del servidor.

help() { doxygen2help "$0" ; }

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then help ; exit ; fi


echo
echo "# Report system"
echo

for x in ./launchers/* ; do
    $x
done

