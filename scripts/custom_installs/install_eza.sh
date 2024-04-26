#! /bin/bash 

cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"
source install_dir.sh

rm -rf $INSTALL_DIR/eza

if [ ! cargo ]; then 
    echo "Cargo is not installed, skipping eza install..."
    exit 
fi

cargo install eza 
