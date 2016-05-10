# http://blog.jcoglan.com/2013/02/12/tab-completion-for-your-command-line-apps/
# XDG
export XDG_DATA_HOME=/usr/local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_DIRS=/usr/share/
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_CACHE_HOME=/usr/local/cache

# path
# normally already added by /etc/paths but non-interactive shells don't use /etc/paths
# so we need to add it for the remote tmux sessions (which need homebrew)
export PATH="$PATH:~/bin"
CDPATH=".:$HOME/Projects"

# shell options
shopt -s dirspell globstar histappend histverify nocaseglob

# env
export PAGER=less
export EDITOR=vim
export LESS=RXi
export LESSHISTFILE=$XDG_CACHE_HOME/less/history

export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTIGNORE="fg*"
export HISTFILE=$XDG_CACHE_HOME/bash/history

# Set up the session directory/file.
export SHELL_SESSION_DIR="$XDG_CACHE_HOME/bash/sessions"
export SHELL_SESSION_FILE="$SHELL_SESSION_DIR/$TERM_SESSION_ID.session"

export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk
export MYSQL_HISTFILE=$XDG_CACHE_HOME/mysql/history
export PSQLRC=$XDG_CONFIG_HOME/psql/config
export PSQL_HISTORY=$XDG_CACHE_HOME/psql/history
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export IEVMS_HOME=$XDG_DATA_HOME/ievms


# Load any supplementary scripts
for config in $XDG_CONFIG_HOME/bashrc.d/*.bash $XDG_CONFIG_HOME/bashrc.d/*.bash.local; do
  test -r "$config" && source "$_"
done
unset -v config
