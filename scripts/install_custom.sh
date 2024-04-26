#! /bin/bash

cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"
CUSTOM_INSTALLS_DIR=custom_installs

for script in $CUSTOM_INSTALLS_DIR/*; do
   bash $script 
done
