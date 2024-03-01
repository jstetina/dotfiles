mkdir -p $HOME/nvim && cd $HOME/nvim/

git clone https://github.com/neovim/neovim.git
cd neovim

make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=$HOME/nvim
make install


