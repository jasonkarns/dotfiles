# vi: ft=bash

# http://blog.jcoglan.com/2013/02/12/tab-completion-for-your-command-line-apps/

PATH=${HOME:?}/bin:/usr/local/sbin:$PATH

# XDG
export XDG_CONFIG_HOME=${HOME:?}/.config
export XDG_DATA_HOME=${HOME:?}/.local/share
export XDG_STATE_HOME=${HOME:?}/.local/state
export XDG_CACHE_HOME=${HOME:?}/.cache

export XDG_RUNTIME_DIR=$TMPDIR
export XDG_DATA_DIRS=/usr/local/share/:/usr/share/
export XDG_CONFIG_DIRS=/etc/xdg

# env
export EDITOR=vim
export PAGER=less
export INPUTRC=${XDG_CONFIG_HOME:?}/readline/inputrc
export LESS=FRXi
export LESSHISTFILE=${XDG_DATA_HOME:?}/less/history
export LESSKEY=${XDG_CONFIG_HOME:?}/less/lesskey
export RANDFILE=${XDG_DATA_HOME:?}/openssl/rnd
export XAUTHORITY=${XDG_RUNTIME_DIR:?}/Xauthority

export VIMINIT="let \$MYVIMRC=\"${XDG_CONFIG_HOME:?}/vim/vimrc\" | source \$MYVIMRC"

# databass
export MYSQL_HISTFILE=${XDG_DATA_HOME:?}/mysql/history
export PSQLRC=${XDG_CONFIG_HOME:?}/pg/config
export PSQL_HISTORY=${XDG_DATA_HOME:?}/pg/history
export PGPASSFILE=${XDG_CONFIG_HOME:?}/pg/pgpass
export PGSERVICEFILE=${XDG_CONFIG_HOME:?}/pg/pg_service.conf

# virtual
export DOCKER_CONFIG=${XDG_CONFIG_HOME:?}/docker
export MACHINE_STORAGE_PATH=${XDG_DATA_HOME:?}/docker-machine
export VAGRANT_HOME=${XDG_DATA_HOME:?}/vagrant
export VAGRANT_ALIAS_FILE=${XDG_DATA_HOME:?}/vagrant/aliases
export IEVMS_HOME=${XDG_DATA_HOME:?}/ievms

codehome="${HOME:?}/Projects"
printf -v CODEPATH -- ":${codehome:?}/%s" bats nodenv rbenv td linemanjs github 3am movehq
export CODEPATH=${codehome:?}${CODEPATH:?}
unset codehome

for config in "${XDG_CONFIG_HOME:?}"/bashrc.d/*.sh{,.local} ~/.bashrc; do
  test -r "$config" && . "$config"
done
unset config

# force cd hooks to be evaled when Terminal.app opens new window or tab
__chwd_hook --eval
