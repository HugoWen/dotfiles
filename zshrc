# Path to your oh-my-zsh configuration.
# ZSH=$HOME/.oh-my-zsh
ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="blinks"

if [ `uname` = "Darwin" ]; then
    ZSH_THEME="robbyrussell"
else
    ZSH_THEME="dpoggi"
fi

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git node brew bundle cap gem github osx rails ruby rvm svn textmate symfony2)

source $ZSH/oh-my-zsh.sh

# zsh-completions 
export PATH=$PATH:/usr/local/share/zsh-completions

# Customize to your needs...
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export LC_CTYPE="utf-8"

#ssh-agent
ssh-agent > /dev/null
#ssh-add > /dev/null


# z
source ${HOME}/.dotfiles/z/z.sh

# Mongodb
export PATH=$PATH:/usr/local/opt/mongodb/bin

#rvm
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#node npm
export PATH=$PATH:/usr/local/share/npm/bin

if [ `uname` = "Darwin" ]; then
# PHP
PATH="/usr/local/sbin:/sbin:$PATH"
export PATH="$(brew --prefix php54)/bin:$PATH"

# pythonbrew
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

# virtualenv
# http://765i.cn/设置一个干净的python环境（python沙盒）/
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=$HOME/.pythonbrew/pythons/Python-2.7.3/bin/python
source $HOME/.pythonbrew/pythons/Python-2.7.3/bin/virtualenvwrapper.sh
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# 加入到path
export PATH=$PATH:~/.dotfiles/bin

# android-sdk
export PATH=$PATH:~/Documents/adt-bundle-mac-x86_64-20130219/sdk/tools

#GOPATH
export GOPATH=~/tmp/gocode

# Loads all my bash functions
for f in ~/.dotfiles/.functions/*.bash; do
  . $f;
done

source ~/.dotfiles/global_aliases

if [ -f ~/.dotfiles/aliases ]
then
    source ~/.dotfiles/aliases
fi
