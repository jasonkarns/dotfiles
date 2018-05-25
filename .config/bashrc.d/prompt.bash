# shellcheck disable=SC2034

#########################
# git setup
#########################

# source git's ps1 script
# shellcheck source=/usr/local/etc/bash_completion.d/git-prompt.sh
brew --prefix &>/dev/null && [[ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]] && source "$(brew --prefix)/etc/bash_completion.d/git-prompt.sh"

# display working directory state (* for modified/+ for staged)
GIT_PS1_SHOWDIRTYSTATE=true
# display stashed state ($ if there are stashed files)
GIT_PS1_SHOWSTASHSTATE=true
# display HEAD vs upstream state
GIT_PS1_SHOWUPSTREAM="auto"
# use colors
GIT_PS1_SHOWCOLORHINTS=true
# detached-head description
GIT_PS1_DESCRIBE_STYLE=branch

#########################
# colors (solarized)
#########################

__color() {
  local -a code

  test "$(tput colors)" -ge 256
  local colorbit=$?

  while [ $# -gt 0 ]; do
    code=()

    case "$1" in
    base0) code=(244 12) ;;
    base1) code=(245 14) ;;
    base2) code=(254 7) ;;
    base3) code=(230 15) ;;
    base00) code=(241 11) ;;
    base01) code=(240 10) ;;
    base02) code=(235 0) ;;
    base03) code=(234 8) ;;
    yellow) code=(136 3) ;;
    orange) code=(166 9) ;;
    red) code=(160 1) ;;
    magenta) code=(125 5) ;;
    violet) code=(61 13) ;;
    blue) code=(33 4) ;;
    cyan) code=(37 6) ;;
    green) code=(64 2) ;;

    reset) tput sgr0;;
    reverse) tput rev;;
    underline) tput smul;;
    bold | dim | smul | rmul | rev | smso | rmso ) tput "$1";;

    *) printf "%s" "$1";;

    esac;

    shift

    [ -n "${code[*]}" ] && tput setaf "${code[$colorbit]}"
  done
}

__ps1() {
  local prior_status=$?

  __nodenv_ps1 "$(__color yellow)[%s] "

  __rbenv_ps1 "$(__color red)[%s] "

  __color cyan '\w' # CWD

  __git_ps1 "$(__color base2) (%s $(git rev-parse --abbrev-ref '@{u}' 2>/dev/null))"

  __color "$(if [ $prior_status -eq 0 ]; then echo base2; else echo red; fi)" "\\n\$ "

  __color reset
}

export PROMPT_COMMAND='PS1=$(__ps1); '$PROMPT_COMMAND
