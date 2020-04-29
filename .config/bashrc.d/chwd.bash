# This script defines __chwd_hook which will register functions
# (or shell commands) to be invoked after every cd/pushd/popd.
# It should be sourced by bashrc so it will take effect for interactive shells.
# The wrapper functions are not exported, so they shouldn't impact scripts.

__CHWD_HOOKS=""

# The prototype function which will be defined per builtin
__chwd_proto__() {
  builtin __chwd_proto__ "$@" || return
  __chwd_hook --eval
}

for c in cd popd pushd; do
  # print the prototype function, substituting the wrapped builtin
  # and eval the output to define the new wrapper function
  eval "$(declare -f __chwd_proto__ | sed "s/__chwd_proto__/$c/")"
done && unset __chwd_proto__

__chwd_hook() {
  case "$1" in
  --eval) eval "$__CHWD_HOOKS" || true;;
  *) __CHWD_HOOKS+="${1%;}; "
  esac
}

__chwd_entering() {
  __chwd_hook "[[ \"\$PWD\" == \"$1\"* ]] && [[ \"\$OLDPWD\" != \"$1\"* ]] && $2;"
}

__chwd_leaving() {
  __chwd_hook "[[ \"\$PWD\" != \"$1\"* ]] && [[ \"\$OLDPWD\" == \"$1\"* ]] && $2;"
}
