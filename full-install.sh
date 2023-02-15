#! /bin/bash

function run(){
	/bin/bash $1
}

run packages.sh
run install_python_libs.sh
run update_config.sh

