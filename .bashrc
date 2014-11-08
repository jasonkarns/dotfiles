# XDG
export XDG_DATA_HOME=/usr/local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_DIRS=/usr/local/share/:/usr/share/
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_CACHE_HOME=/usr/local/cache

# path
# normally already added by /etc/paths but non-interactive shells don't use /etc/paths
# so we need to add it for the remote tmux sessions (which need homebrew)
export PATH="$PATH:~/bin"
export CDPATH=.:$HOME/Projects

# shell options
shopt -s dirspell globstar histappend histverify nocaseglob

# env
export PAGER=less
export EDITOR=vim
export LESS=RXi

export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTIGNORE="fg*"
export HISTFILE=$XDG_CACHE_HOME/bash/history

export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk


BASH_CONFIG=$XDG_CONFIG_HOME/bash

# ps1
[[ -r $BASH_CONFIG/ps1.sh ]] && source $BASH_CONFIG/ps1.sh

# aliases
[[ -r $BASH_CONFIG/aliases.sh ]] && source $BASH_CONFIG/aliases.sh
[[ -r $BASH_CONFIG/aliases.sh.local ]] && source $BASH_CONFIG/aliases.sh.local

# functions
[[ -r $BASH_CONFIG/functions.sh ]] && source $BASH_CONFIG/functions.sh

# gpg
[[ -r $BASH_CONFIG/gpg.sh ]] && source $BASH_CONFIG/gpg.sh

# source all homebrew-installed completion scripts
$(brew --prefix &>/dev/null) && [[ -r $(brew --prefix)/etc/bash_completion ]] && source $(brew --prefix)/etc/bash_completion

# git (aliases, ps1)
[[ -r $BASH_CONFIG/git.sh ]] && source $BASH_CONFIG/git.sh

# keybase.io bash completion
[[ -r $BASH_CONFIG/keybase-completion/keybase.sh ]] && source $BASH_CONFIG/keybase-completion/keybase.sh

# ruby (ruby aliases, bundler completion, rbenv setup)
[[ -r $BASH_CONFIG/ruby.sh ]] && source $BASH_CONFIG/ruby.sh

# node/npm setup and grunt completion
[[ -r $BASH_CONFIG/node.sh ]] && source $BASH_CONFIG/node.sh

# machine-specific config
[[ -r $BASH_CONFIG/bashrc.local ]] && source $BASH_CONFIG/bashrc.local
