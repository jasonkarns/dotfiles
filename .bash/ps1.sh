# display working directory state (* for modified/+ for staged)
export GIT_PS1_SHOWDIRTYSTATE=true
# display stashed state ($ if there are stashed files)
export GIT_PS1_SHOWSTASHSTATE=true

PS1='$(__rbenv_ps1 "[%s] ")\w$(__git_ps1 " (%s)")\n\$ '
