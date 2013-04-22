# path
# normally already added by /etc/paths but non-interactive shells don't use /etc/paths
# so we need to add it for the remote tmux sessions (which need homebrew)
export PATH="/usr/local/bin:$PATH:~/bin"


# env
export PAGER=less
export EDITOR=mvim

# ps1
[[ -f ~/.bash/ps1.sh ]] && source ~/.bash/ps1.sh

# aliases
[[ -f ~/.bash/aliases.sh ]] && source ~/.bash/aliases.sh

# functions
[[ -f ~/.bash/functions.sh ]] && source ~/.bash/functions.sh

# homebrew completion
[[ -f $(brew --prefix)/etc/bash_completion ]] && source $(brew --prefix)/etc/bash_completion

# git (aliases, completion, and ps1)
[[ -f ~/.bash/git.sh ]] && source ~/.bash/git.sh

# ruby (ruby aliases, bundler completion, rbenv setup)
[[ -f ~/.bash/ruby.sh ]] && source ~/.bash/ruby.sh

# node/npm setup and grunt completion
[[ -f ~/.bash/node.sh ]] && source ~/.bash/node.sh

# mosh
complete -F _known_hosts mosh
