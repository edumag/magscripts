libash Libash

Librerías bash que nos facilitan la creación de scripts.

Ejemplos de uso:

Incluir las librerías en caso de no haberlo echo ya.

@code
## Si no hemos incluido pantalla lo hacemos

[[ -z "$pantalla_incluida" ]] && source "$(dirname "${BASH_SOURCE}")/pantalla"
@endcode

La librería se va a buscar en referencia al archivo que la esta llamando $BASH_SOURCE 

@see libash
