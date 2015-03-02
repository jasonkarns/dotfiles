# use XDG dir for .tmux.conf
alias tmux="tmux -f ~/.config/tmux/config"

##############################################
# Tmux session helper (list, attach, create) #
# http://blog.plenz.com/2012-01/tmux-session-names.html
##############################################

function tm() {
  [[ -z "$1" ]] && { echo "usage: tm <session>" >&2; return 1; }
  tmux has -t $1 && tmux attach -t $1 || tmux new -s $1
}

function __tmux_sessions() {
  local session="${COMP_WORDS[$COMP_CWORD]}"
  IFS=$'\n'
  local -a sessions=( $(command tmux list-sessions) )
  unset IFS

  local session_names="${sessions[@]/%\:*/}"
  # echo $session_names
  COMPREPLY=( $(compgen -W "$session_names" -- "$session") )
}
complete -F __tmux_sessions tm
