# path
export PATH="$PATH:~/bin"

# aliases
[[ -f ~/.bash/aliases.sh ]] && source ~/.bash/aliases.sh

# env
export PAGER=less
export EDITOR=mvim

# ps1
[[ -f ~/.bash/ps1.sh ]] && source ~/.bash/ps1.sh

# homebrew completion
[[ -f $(brew --prefix)/etc/bash_completion ]] && source $(brew --prefix)/etc/bash_completion

# git (aliases, completion, and ps1)
[[ -f ~/.bash/git.sh ]] && source ~/.bash/git.sh

# ruby (ruby aliases, bundler completion, rbenv setup)
[[ -f ~/.bash/ruby.sh ]] && source ~/.bash/ruby.sh

