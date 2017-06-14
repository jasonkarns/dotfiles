# http://blog.jcoglan.com/2013/02/12/tab-completion-for-your-command-line-apps/
# XDG
export XDG_DATA_HOME=/usr/local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_DIRS=/usr/share/
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_CACHE_HOME=/usr/local/cache

# shell options
shopt -s dirspell globstar histappend histverify nocaseglob

# env
export PAGER=less
export EDITOR=vim
export LESS=FRXi
export LESSHISTFILE=$XDG_CACHE_HOME/less/history

export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTIGNORE="fg*"
export HISTFILE=$XDG_CACHE_HOME/bash/history

export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk
export MYSQL_HISTFILE=$XDG_CACHE_HOME/mysql/history
export PSQLRC=$XDG_CONFIG_HOME/psql/config
export PSQL_HISTORY=$XDG_CACHE_HOME/psql/history
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export IEVMS_HOME=$XDG_DATA_HOME/ievms

export CODEHOME="$HOME/Projects"
export CODEPATH="$CODEHOME:$CODEHOME/nodenv:$CODEHOME/rbenv:$CODEHOME/td:$CODEHOME/shutterstock:$CODEHOME/linemanjs:$CODEHOME/deque"
# $CODEHOME/3am:$CODEHOME/catalyst:$CODEHOME/comverge:$CODEHOME/csg:$CODEHOME/inn

# Load any supplementary scripts
for config in $XDG_CONFIG_HOME/bashrc.d/*.bash $XDG_CONFIG_HOME/bashrc.d/*.bash.local; do
  test -r "$config" && source "$_"
done; unset -v config
