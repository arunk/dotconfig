#!/usr/bin/env bash

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

wget -O Downloads/zellij.tar.gz https://github.com/zellij-org/zellij/releases/download/v0.40.1/zellij-x86_64-unknown-linux-musl.tar.gz

tar -xzf Downloads/zellij.tar.gz -C ~/.local/bin

/usr/bin/env fish ~/.config/fish/install.fish
