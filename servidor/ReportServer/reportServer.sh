#!/bin/bash

echo
echo "# Report system"
echo

for x in ./launchers/* ; do
    $x
done

