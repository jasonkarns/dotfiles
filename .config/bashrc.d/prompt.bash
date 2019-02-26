# shellcheck disable=2034,2059

#########################
# colors (solarized)
#########################

test "$(tput colors)" -ge 256
__colorbit=$?

__color() {
  while [ $# -gt 0 ]; do
    local -a code=()
    local control='' special=''

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

    reset) control=sgr0;;
    reverse) control=rev;;
    underline) control=smul;;
    bold | dim | smul | rmul | rev | smso | rmso ) control=$1;;

    *) printf "%s" "$1"; shift; continue;;

    esac

    shift

    if [ -n "$control" ]; then
      special=$(tput "$control")
    elif [ -n "${code[*]}" ]; then
      special=$(tput setaf "${code[$__colorbit]}")
    fi

    printf "\\[%s\\]" "$special"
  done
}

#########################
# node version
#########################

if command -v nodenv &>/dev/null; then
  __ps1_nodenv_color="$(__color yellow)"

  __ps1_nodenv() {
    printf "%s[%s] " "$__ps1_nodenv_color" "$(nodenv version-name)"
  }
else
  __ps1_nodenv() { :; }
fi

#########################
# ruby version
#########################

if command -v rbenv &>/dev/null; then
  __ps1_rbenv_color="$(__color red)"

  __ps1_rbenv() {
    printf "%s[%s] " "$__ps1_rbenv_color" "$(rbenv version-name)"
  }
else
  __ps1_rbenv() { :; }
fi

#########################
# cwd
#########################

__ps1_cwd="$(__color cyan '\w')"

#########################
# git
#########################

# git's ps1 script already sourced by bash completion
# /usr/local/etc/bash_completion.d/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1 # display working directory state (* for modified/+ for staged)
GIT_PS1_SHOWSTASHSTATE=1 # display stashed state ($ if there are stashed files)
GIT_PS1_SHOWUPSTREAM=auto # display HEAD vs upstream state
GIT_PS1_SHOWUNTRACKEDFILES= # display untracked state(% if there are untracked files)
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_DESCRIBE_STYLE=branch # detached-head description

__ps1_git_color="$(__color base2)"

#########################
# prompt status
#########################

__ps1_success_color="$(__color base2)"
__ps1_error_color="$(__color red)"
__ps1_reset_color="$(__color reset)"

__ps1() {
  local prior_status=$?

  __ps1_nodenv

  __ps1_rbenv

  printf "$__ps1_cwd"

  __git_ps1 "$__ps1_git_color (%s $(git rev-parse --abbrev-ref '@{u}' 2>/dev/null))"

  if [ $prior_status -eq 0 ]; then
    echo "$__ps1_success_color"
  else
    echo "$__ps1_error_color"
  fi

  printf "\\$ %s" "$__ps1_reset_color"
}

PROMPT_COMMAND='PS1=$(time __ps1); '$PROMPT_COMMAND

unset __colorbit
