dotfiles
========

dotfiles, like vim,git,zsh,...


#VIM
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.vimrc ~/.vim/vimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Launch vim
:BundleInstall


#ZSH
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc 
chsh -s /bin/zsh 


