# This script defines __chwd_hook which will register functions
# (or shell commands) to be invoked after every cd/pushd/popd.
# It should be sourced by bashrc so it will take effect for interactive shells.
# The wrapper functions are not exported, so they shouldn't impact scripts.

declare -ag __chwd_hooks

# The prototype function which will be defined per builtin
__chwd__() {
  builtin __chwd__ "$@" || return

  for __hook in "${__chwd_hooks[@]}"; do
    eval "$__hook" || break
  done || true
}

for c in cd popd pushd; do
  # print the prototype function, substituting the wrapped builtin
  # and eval the output to define the new wrapper function
  eval "$(declare -f __chwd__ | sed "s/__chwd__/$c/")"
done && unset __chwd__

__chwd_hook() {
  __chwd_hooks+=("$1")
}
