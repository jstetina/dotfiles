#! /bin/bash 

cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"
source install_dir.sh 

if ! command -v go 2> /dev/null;
then 
  echo "Go is not installed, skipping chezmoi install."
  exit 1
fi 

git clone https://github.com/twpayne/chezmoi.git $INSTALL_DIR/chezmoi --depth 1
cd $INSTALL_DIR/chezmoi
make build 



