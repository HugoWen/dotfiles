#!/bin/bash

git submodule init
git submodule update

ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

ln -sf ~/.dotfiles/vim ~/.vim
ln -sf ~/.vim/vimrc ~/.vimrc

if [ ! -d ~/.vim/bundle/vundle ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

if [ ! -f /bin/zsh ]; then
  git config --global credential.helper 'cache --timeout=360000'
  echo 'installing zsh...'
  sudo apt-get install zsh
  echo 'zsh installed'
fi

ln -sf ~/.dotfiles/zshrc ~/.zshrc
chsh -s /bin/zsh

echo 'launch vim, run :BundleInstall'
