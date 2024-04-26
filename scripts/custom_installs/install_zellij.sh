#! /bin/bash

#  _____                      _ _               _ _ _  _ 
# (_____)           _        | | |             | | (_)(_)
#    _   ____   ___| |_  ____| | |   _____ ____| | |_  _ 
#   | | |  _ \ /___)  _)/ _  | | |  (___  ) _  ) | | || |
#  _| |_| | | |___ | |_( ( | | | |   / __( (/ /| | | || |
# (_____)_| |_(___/ \___)_||_|_|_|  (_____)____)_|_|_|| |
#                                                    (__/ 

cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"
source install_dir.sh


if ! command -v cargo &> /dev/null; then
    echo "Cargo does not exist, skipping zellij"
fi

cargo install --locked zellij
