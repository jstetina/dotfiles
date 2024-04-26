#! /bin/bash
cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"
source install_dir.sh

git clone https://github.com/Kitware/CMake.git $INSTALL_DIR/cmake --depth 1 --branch release
cd $HOME/custom/apps/cmake
./configure && make && make -j$(nproc) && make install
