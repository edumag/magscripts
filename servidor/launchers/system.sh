#!/bin/bash

## system.sh muestra información detallada sobre el estado del sistema,
## incluyendo procesos en ejecución y uso de memoria.

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
