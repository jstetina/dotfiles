mkdir -p $HOME/nvim && cd $HOME/nvim/

git clone https://github.com/neovim/neovim.git
cd neovim

make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=$HOME/..
make install

exit
https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

