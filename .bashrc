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

export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

# ps1
[[ -r ~/.bash/ps1.sh ]] && source ~/.bash/ps1.sh

# aliases
[[ -r ~/.bash/aliases.sh ]] && source ~/.bash/aliases.sh

# functions
[[ -r ~/.bash/functions.sh ]] && source ~/.bash/functions.sh

# gpg
[[ -r ~/.bash/gpg.sh ]] && source ~/.bash/gpg.sh

# source all homebrew-installed completion scripts
$(brew --prefix &>/dev/null) && [[ -r $(brew --prefix)/etc/bash_completion ]] && source $(brew --prefix)/etc/bash_completion

# git (aliases, ps1)
[[ -r ~/.bash/git.sh ]] && source ~/.bash/git.sh

# ruby (ruby aliases, bundler completion, rbenv setup)
[[ -r ~/.bash/ruby.sh ]] && source ~/.bash/ruby.sh

# node/npm setup and grunt completion
[[ -r ~/.bash/node.sh ]] && source ~/.bash/node.sh

# travis completion
[[ -r ~/.travis/travis.sh ]] && source ~/.travis/travis.sh

# machine-specific config
[[ -r ~/.bashrc.local ]] && source ~/.bashrc.local
