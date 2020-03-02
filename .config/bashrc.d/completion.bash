# shellcheck disable=SC1090

# enable shell completion
export BASH_COMPLETION_COMPAT_DIR="${HOMEBREW_PREFIX:=$(brew --prefix)}/etc/bash_completion.d"
test -r "${HOMEBREW_PREFIX:=$(brew --prefix)}/etc/profile.d/bash_completion.sh" && . "$_"
