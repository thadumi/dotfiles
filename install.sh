#!/usr/bin/env bash

set -ex

SOURCE=$(pwd)

echo 'Settings up symbolic links to repository'

ln -s $SOURCE/config/.zshrc ~/.zshrc
ln -s $SOURCE/config/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s $SOURCE/config/.tmux.conf ~/.tmux.conf

ln -s ~/src/dotfiles/config/.vimrc ~/.vimrc
ln -s ~/src/dotfiles/config/nvim ~/.config/nvim

#-------------------- ZSH plugins ------------------------
echo '----------------------------------------------------'
echo 'Installing ZSH plugins...'

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


#-------------------- NeoVim plugins -----------------------
# echo '----------------------------------------------------'
# echo 'Installing neovim plugins...'

# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# git clone https://github.com/neovim/nvim-lspconfig ~/.config/nvim/pack/nvim/start/nvim-lspconfig
