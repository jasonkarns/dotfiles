# shellcheck disable=SC1090

# enable shell completion
export BASH_COMPLETION_COMPAT_DIR="${HOMEBREW_PREFIX:?}/etc/bash_completion.d"
test -r "${HOMEBREW_PREFIX:?}/etc/profile.d/bash_completion.sh" && . "$_"
