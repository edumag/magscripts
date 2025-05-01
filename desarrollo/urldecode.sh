#!/bin/bash

LANG=C

urldecode() {
    local data=${1//+/ }
    printf '%b' "${data//%/\x}"
}

urldecode "$@"
