#! /bin/bash

ROOT_DIR='..'

function run(){
	/bin/bash $1
}

run packages.sh
run install_python_libs.sh
run nvim-setup.sh
run install_brew.sh
run update_config.sh

cp ssh-conf ~/.ssh/config
