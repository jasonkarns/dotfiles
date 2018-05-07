# shellcheck disable=SC1090

# completion
brew --prefix &>/dev/null && test -r "$(brew --prefix)"/share/bash-completion/bash_completion && source "$_"
