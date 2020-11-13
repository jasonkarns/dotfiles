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

__ps1_red=$(__color red)
__ps1_yellow=$(__color yellow)
__ps1_cyan=$(__color cyan)
__ps1_white=$(__color base2)

__ps1_reset_color=$(__color reset)

unset __colorbit

#########################
# node version
#########################

if command -v nodenv &>/dev/null; then
  __ps1_nodenv() {
    printf -v "$1" -- "[%s] " "$(nodenv version-name 2>/dev/null)"
  }
else
  echo "nodenv not found; skipping nodenv PS1 configuration" >&2
  __ps1_nodenv() { :; }
fi

#########################
# ruby version
#########################

if command -v rbenv &>/dev/null; then
  __ps1_rbenv() {
    printf -v "$1" -- "[%s] " "$(rbenv version-name 2>/dev/null)"
  }
else
  echo "rbenv not found; skipping rbenv PS1 configuration" >&2
  __ps1_rbenv() { :; }
fi

#########################
# git
#########################

  # git's ps1 script should already sourced by bash completion
  # /usr/local/etc/bash_completion.d/git-prompt.sh

if command -v __git_ps1 &>/dev/null; then
  __ps1_git() {
    GIT_PS1_SHOWDIRTYSTATE=1 # display working directory state (* for modified/+ for staged)
    GIT_PS1_SHOWSTASHSTATE=1 # display stashed state ($ if there are stashed files)
    GIT_PS1_SHOWUPSTREAM=auto # display HEAD vs upstream state
    GIT_PS1_SHOWUNTRACKEDFILES= # display untracked state(% if there are untracked files)
    GIT_PS1_SHOWCOLORHINTS=
    GIT_PS1_DESCRIBE_STYLE=branch # detached-head description

    __git_ps1 "" "" " (%s $(git rev-parse --abbrev-ref '@{u}' 2>/dev/null))"
    printf -v "$1" -- "$PS1"
  }
else
  echo "git-prompt not found; skipping git PS1 configuration" >&2
  __ps1_git() { :; }
fi

#########################
# command duration
#########################

declare -i __DURATION

__timer() {
  __DURATION=$((SECONDS - __TIMER))
  unset __TIMER
}

__duration() {
  echo "$( bc -l <<< "scale=2; $__DURATION / 60") minutes"
}

trap ': ${__TIMER:=$SECONDS}' DEBUG

#########################
# prompt status
#########################

__ps1_prompt() {
  local status_color

  if [ "$2" -eq 0 ]; then
    status_color=$__ps1_white
  else
    status_color=$__ps1_red
  fi

  printf -v "$1" -- "$status_color"
}

__ps1() {
  local prior_status=$? cwd='\w' prompt node ruby git

  __ps1_prompt prompt $prior_status
  __ps1_nodenv node
  __ps1_rbenv ruby
  __ps1_git git

  printf -v PS1 -- "$__ps1_yellow$node$__ps1_red$ruby$__ps1_cyan$cwd$__ps1_white$git\\n$prompt\\$ $__ps1_reset_color"
}

PROMPT_COMMAND='__ps1; '$PROMPT_COMMAND'; __timer'
