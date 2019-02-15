#! /bin/bash

_cli_bash_autocomplete() {
    local cur opts
    cur="${COMP_WORDS[COMP_CWORD]}"
    opts=$( "${COMP_WORDS[@]:0:$COMP_CWORD}" --generate-bash-completion )
    mapfile -t COMPREPLY < <(compgen -W "${opts}" -- "${cur}")

    return 0
}

complete -F _cli_bash_autocomplete keybase
