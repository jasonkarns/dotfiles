# shellcheck disable=SC2034

PATH=$HOME/bin:$PATH

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
export LESSKEY=$XDG_CONFIG_HOME/less/lesskey

export DOCKER_CONFIG=$XDG_CONFIG_HOME/docker
export MACHINE_STORAGE_PATH=$XDG_DATA_HOME/docker-machine

export MYSQL_HISTFILE=$XDG_DATA_HOME/mysql/history
export PSQLRC=$XDG_CONFIG_HOME/pg/config
export PSQL_HISTORY=$XDG_DATA_HOME/pg/history
export PGPASSFILE=$XDG_CONFIG_HOME/pg/pgpass
export PGSERVICEFILE=$XDG_CONFIG_HOME/pg/pg_service.conf

export INPUTRC=$XDG_CONFIG_HOME/readline/inputrc

export RANDFILE=$XDG_DATA_HOME/openssl/rnd
export VAGRANT_HOME=$XDG_DATA_HOME/vagrant
export VAGRANT_ALIAS_FILE=$XDG_DATA_HOME/vagrant/aliases

export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority

# shellcheck disable=SC2016
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export IEVMS_HOME=$XDG_DATA_HOME/ievms

CODEHOME="$HOME/Projects"
CODEPATH="$CODEHOME:$CODEHOME/nodenv:$CODEHOME/rbenv:$CODEHOME/td:$CODEHOME/linemanjs:$CODEHOME/github"
# $CODEHOME/3am:$CODEHOME/catalyst:$CODEHOME/comverge:$CODEHOME/csg:$CODEHOME/inn:$CODEHOME/electricai:$CODEHOME/deque:$CODEHOME/shutterstock

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
  # shellcheck disable=SC1090
  for config in "$@"; do test -r "$config" && source "$_"; done
}

source_supplementary_scripts "$XDG_CONFIG_HOME"/bashrc.d/**/*.bash{,.local}
