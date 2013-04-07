dotfiles
========

dotfiles, like vim,git,zsh,...
配置文件均来自网络，加上部分自己的修改。




###VIM
``` bash
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.vimrc ~/.vim/vimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

Launch vim
``` vim
:BundleInstall
```


###ZSH
``` bash
ln -s ~/.dotfiles/zshrc ~/.zshrc 
chsh -s /bin/zsh 
```

###鼠须管 https://github.com/Aben/squirrel-setting
sh ~/.dotfiles/squirrel-setting/install.sh

