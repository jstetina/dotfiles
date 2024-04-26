#! /bin/bash

#             _                _               _                               
#            (_)              | |             | |              _               
#  ____ _   _ _ ____      ____| | _   ____  _ | |    ___  ____| |_ _   _ ____  
# |  _ \ | | | |    \    / ___) || \ / _  |/ || |   /___)/ _  )  _) | | |  _ \ 
# | | | \ V /| | | | |  ( (___| | | ( ( | ( (_| |  |___ ( (/ /| |_| |_| | | | |
# |_| |_|\_/ |_|_|_|_|   \____)_| |_|\_||_|\____|  (___/ \____)\___)____| ||_/ 
#                                                                      |_|    

cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"
source install_dir.sh

# Uninstall nvim
function remove_prev_nvim() {
    rm -rf ~/.config/nvim
    rm -rf ~/.local/share/nvim
}

# Install 'vanilla' neovim
function get_neovim() {
    git clone https://github.com/neovim/neovim.git $INSTALL_DIR/nvim --depth 1
    cd $INSTALL_DIR/nvim
    make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=$INSTALL_DIR
    make install
}

function get_nvchad() { 
    # Install nvchad 
    git clone https://github.com/NvChad/starter $HOME/.config/nvim --depth 1 
}

remove_prev_nvim;
get_neovim;
get_nvchad;





