# shellcheck disable=SC2034

# http://blog.jcoglan.com/2013/02/12/tab-completion-for-your-command-line-apps/
# XDG
export XDG_DATA_HOME=/usr/local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_DIRS=/usr/share/
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_CACHE_HOME=/usr/local/cache

HOMEBREW_PREFIX=/usr/local

# shell options
shopt -s dirspell globstar histappend histverify nocaseglob

# env
export PAGER=less
export EDITOR=vim
export LESS=FRXi
export LESSHISTFILE=$XDG_DATA_HOME/less/history

export MYSQL_HISTFILE=$XDG_DATA_HOME/mysql/history
export PSQLRC=$XDG_CONFIG_HOME/psql/config
export PSQL_HISTORY=$XDG_DATA_HOME/psql/history
# shellcheck disable=SC2016
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export IEVMS_HOME=$XDG_DATA_HOME/ievms

CODEHOME="$HOME/Projects"
CODEPATH="$CODEHOME:$CODEHOME/nodenv:$CODEHOME/rbenv:$CODEHOME/td:$CODEHOME/linemanjs:$CODEHOME/electricai" # deque, shutterstock
# $CODEHOME/3am:$CODEHOME/catalyst:$CODEHOME/comverge:$CODEHOME/csg:$CODEHOME/inn

declare -a BEFORE_CD_HOOKS AFTER_CD_HOOKS

before_cd() {
  local hook="$1"
  BEFORE_CD_HOOKS["${#BEFORE_CD_HOOKS[@]}"]="$hook"
}

after_cd() {
  local hook="$1"
  AFTER_CD_HOOKS["${#AFTER_CD_HOOKS[@]}"]="$hook"
}

source_supplementary_scripts(){
  for config in "$@"; do
    # shellcheck disable=SC1090
    test -r "$config" && source "$_"
  done
}

source_supplementary_scripts "$XDG_CONFIG_HOME"/bashrc.d/*.bash{,.local}
