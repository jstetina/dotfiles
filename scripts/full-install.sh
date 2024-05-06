#! /bin/bash

ROOT_DIR='..'

function run(){
	/bin/bash $1
}

run packages.sh

# Custom installs
run custom_installs/install_python_libs.sh
run custom_installs/install_nvim.sh
run custom_installs/install_brew.sh
run custom_installs/install_zellij.sh

# Update configs
run update_config.sh

cp ssh-conf ~/.ssh/config
