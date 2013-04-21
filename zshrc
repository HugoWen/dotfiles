# Path to your oh-my-zsh configuration.
# ZSH=$HOME/.oh-my-zsh
ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# PHP
PATH="/usr/local/sbin:/sbin:$PATH"
export PATH="$(brew --prefix php54)/bin:$PATH"

# Mongodb
PATH=$PATH:/usr/local/opt/mongodb/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# nginx control
#alias nginx_start='sudo launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist'
#alias nginx_stop='sudo launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist'
#alias nginx_restart='nginx_stop; nginx_start;'
alias nginx_start='sudo nginx'
alias nginx_stop='sudo nginx -s stop'
alias nginx_restart='nginx_stop; nginx_start;'

# php-fpm control
#alias php_start='sudo launchctl load -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist'
#alias php_stop='sudo launchctl unload -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist'
#alias php_restart='php_stop; php_start;'
alias php_start='sudo php-fpm'
alias php_stop='sudo kill `cat /var/run/php-fpm.pid`'
alias php_restart='php_stop; php_start;'

# mysql control
alias mysql_start='mysql.server start'
alias mysql_stop='mysql.server stop'
alias mysql_restart='mysql.server restart'

# mongo control
alias mongo_start='/usr/local/opt/mongodb/bin/mongod --fork'
alias mongo_stop='sh ~/.dotfiles/sh/mongo_stop'
alias mongo_restart='mongo_stop; mongo_start;'

# pythonbrew
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

# virtualenv
# http://765i.cn/设置一个干净的python环境（python沙盒）/
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=$HOME/.pythonbrew/pythons/Python-2.7.3/bin/python
source $HOME/.pythonbrew/pythons/Python-2.7.3/bin/virtualenvwrapper.sh
# virtualenv aliases
alias v='workon'
alias v.deactivate='deactivate'
alias v.de='deactivate'
alias v.mk='mkvirtualenv --no-site-packages'
alias v.mk_withsitepackages='mkvirtualenv'
alias v.mkw='mkvirtualenv'
alias v.rm='rmvirtualenv'
alias v.switch='workon'
alias v.add2virtualenv='add2virtualenv'
alias v.cdsitepackages='cdsitepackages'
alias v.cd='cdvirtualenv'
alias v.lssitepackages='lssitepackages'
alias v.ls='lssitepackages'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# 翻墙 GoAgent
alias goagent='sudo python ~/Tools/goagent/local/proxy.py'

# 加入到path
PATH=$PATH:~/.dotfiles/bin

# android-sdk
PATH=$PATH:~/Documents/adt-bundle-mac-x86_64-20130219/sdk/tools

# proxy切换
alias proxy="sudo sh ~/.dotfiles/sh/proxy.sh on"
alias proxy_off="sudo sh ~/.dotfiles/sh/proxy.sh off"
alias proxy_all="sudo sh ~/.dotfiles/sh/proxy.sh all"
