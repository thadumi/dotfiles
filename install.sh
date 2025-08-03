#!/usr/bin/env bash

SOURCE=$(pwd)

echo 'Settings up symbolic links to repository'

ln -s $SOURCE/config/.zshrc ~/.zshrc
ln -s $SOURCE/config/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s $SOURCE/config/.tmux.conf ~/.tmux.conf
ln -s ~/src/dotfiles/config/.tmux.conf ~/.vimrc
