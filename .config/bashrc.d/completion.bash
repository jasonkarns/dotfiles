# shellcheck disable=SC1090

# bash-completion@2 lazy-loads its own bundled completions from
# $XDG_DATA_HOME/bash-completion/completions/

# homebrew installs formula completions to $HOMEBREW_PREFIX/etc/bash_completion.d/
# which must be set as the compat directory so that bash-completion will
# automatically source all scripts at init
export BASH_COMPLETION_COMPAT_DIR="${HOMEBREW_PREFIX:=$(brew --prefix)}/etc/bash_completion.d"

# init bash-completion@2
completion=${HOMEBREW_PREFIX:=$(brew --prefix)}/etc/profile.d/bash_completion.sh
test -r "$completion" && . "$completion"
