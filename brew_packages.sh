#! /bin/bash

install_homebrew(){
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}


packages=(
    fzf
    chezmo
    dust
    btop
    tldr
    zellij
    eza
)

if [ ! -z ${INSTALL+x} ]; then
    install_homebrew
fi

for pckg in ${packages[@]}; do
    brew install $pckg
done
