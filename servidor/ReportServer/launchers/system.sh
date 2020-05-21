#!/bin/bash

## @brief Mostrar estado del sistema.

help() {
    echo
    echo Mostrar estado del sistema.
    echo
}

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then help ; exit ; fi

echo
echo "## Procesos ordenados por %MEM"
echo

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head

echo
echo "## free -mth"
echo

free -mth
