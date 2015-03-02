##############################################
# Tmux session helper (list, attach, create) #
##############################################

# http://blog.jcoglan.com/2013/02/12/tab-completion-for-your-command-line-apps/

function tm() {
  [[ -z "$1" ]] && { echo "usage: tm <session>" >&2; return 1; }
  tmux has -t $1 && tmux attach -t $1 || tmux new -s $1
}

function __tmux_sessions() {
  local expl
  local -a sessions
  sessions=( ${${(f)"$(command tmux list-sessions)"}/:[ $'\t']##/:} )
  _describe -t sessions 'sessions' sessions "$@"
}
complete -F __tmux_sessions tm
