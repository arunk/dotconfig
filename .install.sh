#!/usr/bin/env bash

if [[ ! -f /bin/fish ]]; then
    sudo apt-add-repository ppa:fish-shell/release-3
    sudo apt update
    sudo apt install fish
fi

if [[ ! -f /usr/share/rvm/bin/rvm ]]; then
    gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    sudo apt-add-repository -y ppa:rael-gc/rvm
    sudo apt-get update
    sudo apt-get install rvm
    sudo usermod -a -G rvm $USER
fi

VIMVERSION=$(vim --version | head -1 | cut -d ' ' -f 5)
if (( $(echo "$VIMVERSION < 9.0" | bc -l) )); then
    sudo add-apt-repository ppa:jonathonf/vim
    sudo apt update
    sudo apt install vim
fi

if [[ ! -f ~/.local/bin/zellij ]]; then
    wget -O Downloads/zellij.tar.gz https://github.com/zellij-org/zellij/releases/download/v0.40.1/zellij-x86_64-unknown-linux-musl.tar.gz
    tar -xzf Downloads/zellij.tar.gz -C ~/.local/bin
fi

if [[ ! -d ~/.vim/pack/minpac/opt/minpac ]]; then
    git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac
fi

if [[ ! -d ~/.fzf ]]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
fi
/usr/bin/env fish ~/.config/fish/install.fish

