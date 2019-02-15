# shellcheck disable=SC1090

# completion
test -r "$HOMEBREW_PREFIX/share/bash-completion/bash_completion" && source "$_"

# disable analytics
export HOMEBREW_NO_ANALYTICS=1
