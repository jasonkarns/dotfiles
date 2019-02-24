# shellcheck shell=bash disable=SC2034

# http://blog.jcoglan.com/2013/02/12/tab-completion-for-your-command-line-apps/

PATH=$HOME/bin:$PATH

# XDG
export XDG_DATA_HOME=/usr/local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_DIRS=/usr/share/
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_CACHE_HOME=/usr/local/cache

# env
export EDITOR=vim
export PAGER=less
export INPUTRC=$XDG_CONFIG_HOME/readline/inputrc
export LESS=FRXi
export LESSHISTFILE=$XDG_DATA_HOME/less/history
export LESSKEY=$XDG_CONFIG_HOME/less/lesskey
export RANDFILE=$XDG_DATA_HOME/openssl/rnd
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority

export VIMINIT="let \$MYVIMRC=\"$XDG_CONFIG_HOME/vim/vimrc\" | source \$MYVIMRC"

# databass
export MYSQL_HISTFILE=$XDG_DATA_HOME/mysql/history
export PSQLRC=$XDG_CONFIG_HOME/pg/config
export PSQL_HISTORY=$XDG_DATA_HOME/pg/history
export PGPASSFILE=$XDG_CONFIG_HOME/pg/pgpass
export PGSERVICEFILE=$XDG_CONFIG_HOME/pg/pg_service.conf

# virtual
export DOCKER_CONFIG=$XDG_CONFIG_HOME/docker
export MACHINE_STORAGE_PATH=$XDG_DATA_HOME/docker-machine
export VAGRANT_HOME=$XDG_DATA_HOME/vagrant
export VAGRANT_ALIAS_FILE=$XDG_DATA_HOME/vagrant/aliases
export IEVMS_HOME=$XDG_DATA_HOME/ievms

CODE="$HOME/Projects"
CODEPATH="$CODE$(printf ":$CODE/%s" nodenv rbenv td linemanjs github 3am)"
export CODEPATH
unset CODE

for config in "$XDG_CONFIG_HOME"/bashrc.d/*.sh{,.local} .bashrc; do
  # shellcheck disable=SC1090
  test -r "$config" && . "$_"
done
